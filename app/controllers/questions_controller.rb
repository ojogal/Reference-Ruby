class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show update destroy ]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def question_params
  end

  def set_question
  end
end
