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
    @question = Question.create(question_params)

    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def question_params
    params.require(:question).permit(:title, :body)
  end

  def set_question
  end
end
