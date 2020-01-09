class QuestionsController < ApplicationController

  before_action :find_question, only: %i[show destroy]
  before_action :find_test, only: %i[new create index]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions
  end

  def create
    @question = Question.new(question_params)
    if question.save
      render plain: question.inspect
    else
      render plain: "Error. Try again"
    end
  end

  def new
    @question = Question.new
  end

  def show
  end

  def destroy
    @question.destroy
    redirect_to tests_path
  end

  private

    def find_question
      @question = Question.find(params[:id])
    end

    def find_test
      @test = Test.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:body, :test_id)
    end

    def rescue_with_question_not_found
      render plain: 'Question was not found'
    end

end
