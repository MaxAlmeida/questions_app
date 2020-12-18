class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]

  # GET /questions
  # GET /questions.json
  def index
    @q = QuestionAccess.ransack(params[:q])
    @more_accessed_ids = @q.result(distinct: true)
                           .includes(:question)
                           .joins(:question)
                           .order('sum_times_accessed DESC')
                           .group('questions.id')
                           .sum('times_accessed')

    @questions = Question.find(@more_accessed_ids.keys)
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:statement, :text, :answer, :daily_access, :discipline_id)
    end
end
