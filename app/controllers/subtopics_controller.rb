class SubtopicsController < ApplicationController
  def index
    @subtopics = params[:q] ? Subtopic.search_for(params[:q]) : Subtopic.all
    if @subtopics.empty? 
       flash[:notice] = "No topics found using the keyword '#{params[:q]}.' Try again or refer to the list."
       redirect_to topics_path
    end
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
    @subtopic = Subtopic.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def contact
  end
end
