class CompletedTestsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_completed_test, only: %i[show update result gist]

  def show
  end

  def result
  end

  def update
    @completed_test.accept!(params[:answer_ids])

    if @completed_test.completed?
      TestsMailer.completed_test(@completed_test).deliver_now
      redirect_to result_completed_test_path(@completed_test)
    else
      render :show
    end
  end

  def gist
    result = GistQuestionService.new(@completed_test.current_question).call
  rescue Octokit::Error
    redirect_to @completed_test, { alert: t('.failure') }
  else
    redirect_to @completed_test, { notice: t('.success'), url:result.html_url }
  end

  private

    def set_completed_test
      @completed_test = CompletedTest.find(params[:id])
    end

end
