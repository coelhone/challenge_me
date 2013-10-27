class SolutionsController < ApplicationController

  respond_to :js

  before_action :set_solution, only: [:show, :edit, :update, :destroy]

  # GET /solutions
  # GET /solutions.json
  def index
    @solutions = Solution.all
  end

  # GET /solutions/1
  # GET /solutions/1.json
  def show
    respond_with @solution
  end

  # GET /solutions/new
  def new
    @solution = Solution.new(challenge_id: params[:challenge_id], user_id: current_user.id)
    
    respond_with @solution
  end

  # GET /solutions/1/edit
  def edit
  end

  # POST /solutions
  # POST /solutions.json
  def create
    @solution = Solution.new(solution_params)

    respond_to do |format|
      if @solution.save
        format.json { render action: 'show', status: :created, location: @solution }
        format.js   {}#redirect_to @solution, notice: 'Solution was successfully created.' }
      else
        format.json { render json: @solution.errors, status: :unprocessable_entity }
        format.js   {}
      end
    end
  end

  # PATCH/PUT /solutions/1
  # PATCH/PUT /solutions/1.json
  def update
    respond_to do |format|
      if @solution.update(solution_params)
        format.json { head :no_content }
        format.js   {}
      else
        format.json { render json: @solution.errors, status: :unprocessable_entity }
        format.js   {}
      end
    end
  end

  # DELETE /solutions/1
  # DELETE /solutions/1.json
  def destroy
    @challenge_id = @solution.challenge_id
    @solution.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.js   {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution
      @solution = Solution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solution_params
      params.require(:solution).permit(:solution_file, :desc, :time, :memory, :lines, :points, :challenge_id, :user_id)
    end
end
