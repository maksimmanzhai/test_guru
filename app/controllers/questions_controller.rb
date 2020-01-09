class QuestionsController < ApplicationController

  before_action :find_question, only: %i[show]
  before_action :find_test, only: %i[new, create, index]

  def index
    @questions = @test.questions
  end

  def create
    question = Question.create(question_params)
    question.save
    render plain: question.inspect
  end

  def new
    @question = Question.new
  end

  def show
    render inline: '<%= @question.body %>'
  end

  def destroy
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

end
