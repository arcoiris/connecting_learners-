class SubtopicsController < ApplicationController
  def index
    @subtopics = params[:q] ? Subtopic.search_for(params[:q]) : Subtopic.all
  end

  def new
    @subtopic = Subtopic.new 
  end

  def create
    safe_subtopic = params.require(:subtopic).require(:name, :topic_id)
    @subtopic = safe_subtopic.create(safe_subtopic)
    redirect to @subtopic
  end

  def show
    @subtopics = Subtopic.find params[:id]
    @user_zip_code = user_signed_in? ? current_user.zip_code : nil 
    @nearby_listings = @subtopics.listings.near(params[:location], params[:radius])
    @mile_radii = [10,20,30]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
