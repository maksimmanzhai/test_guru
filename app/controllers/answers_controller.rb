class AnswersController < ApplicationController
  before_action :set_answer, only: %i[show edit update destroy]

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end
end
