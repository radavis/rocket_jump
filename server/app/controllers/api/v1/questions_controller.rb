class Api::V1::QuestionsController < ApplicationController
  respond_to :json

  def index
    render json: Question.limit(20)
  end

  def show
    render json: Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      render json: @question, status: :created, location: [:api, :v1, @question]
    else
      render json: { errors: @question.errors }, status: :unprocessable_entity
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      render json: @question, status: :ok, location: [:api, :v1, @question]
    else
      render json: { errors: @question.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    Question.destroy(params[:id])

    head :no_content
  end

  private
  def question_params
    params.require(:question).permit(:body)
  end
end
