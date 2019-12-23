class QuestionsController < ApplicationController
  # list of all questions
  def index
    @questions = Question.all
  end

  # view of question
  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  # creating of question
  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  # destroy of question
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:body)
  end


end
