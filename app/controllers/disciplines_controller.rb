class DisciplinesController < ApplicationController
  before_action :set_discipline, only: [:show]

  # GET /disciplines
  # GET /disciplines.json
  def index
    @disciplines = Discipline.order(questions_daily_access: :desc)
  end

  # GET /disciplines/1
  # GET /disciplines/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline
      @discipline = Discipline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discipline_params
      params.fetch(:discipline, {})
    end
end
