class SubtopicsController < ApplicationController
  def index
    @subtopics = Subtopic.all 
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
    @subtopic = Subtopic.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
