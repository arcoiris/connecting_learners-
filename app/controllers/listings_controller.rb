class ListingsController < ApplicationController
  def index
  	@listings = Listing.all
  end

  def show
  	@listing = Listing.find params[:id]
  	@user = current_user
  end

  def new 
  	@listing = Listing.new
    @subtopics = Subtopic.all
    @zip_code = current_user.zip_code
  end

  def create
    if user_signed_in? 
      safe_listing = params.require(:listing).permit(:title :description, :subtopic_id, :address, :latitude, :longitude).merge(user_id: current_user.id)
      @listing = Listing.create safe_listing
      redirect_to @listing
    else
      redirect_to new_user_session_path, alert: "Only logged in users can create listings." 
    end
  end 
end
