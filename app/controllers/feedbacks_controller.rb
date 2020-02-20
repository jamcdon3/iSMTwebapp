class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end
=begin
  def show
    @feedback = Feedback.find(params[:id])
  end
=end
  def new

  end

  def create
    #render plain: params[:feedback].inspect
    @feedback = Feedback.new(feedback_params)

    @feedback.save
    redirect_to '/feedbacks'
  end


  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy

    redirect_to '/feedbacks'
  end


  private def feedback_params
    params.require(:feedback).permit(:title, :body)
  end


end
