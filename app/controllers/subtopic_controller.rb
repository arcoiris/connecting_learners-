class SubtopicController < ApplicationController
  def index
    @subtopics = Subtopics.all 
  end

  def new
    @subtopic = Subtopic.new 
  end

  def create
    safe_subtopic = params.require(:subtopic).require(:name, :topic_id)
    @subtopic = safe_subtopic.create(safe_subtopic)
    redirect to @subtopic
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # def show
  # end
end
