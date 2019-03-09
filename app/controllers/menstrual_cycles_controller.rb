class MenstrualCyclesController < ApplicationController
  before_action :set_menstrual_cycle, only: [:show, :edit, :update, :destroy]

  # GET /menstrual_cycles
  # GET /menstrual_cycles.json
  def index
    @menstrual_cycles = current_user.menstrual_cycles.all
  end

  # GET /menstrual_cycles/1
  # GET /menstrual_cycles/1.json
  def show
  end

  # GET /menstrual_cycles/new
  def new
    @menstrual_cycle = current_user.menstrual_cycles.new
  end

  # GET /menstrual_cycles/1/edit
  def edit
  end

  # POST /menstrual_cycles
  # POST /menstrual_cycles.json
  def create
    @menstrual_cycle = current_user.menstrual_cycles.new(menstrual_cycle_params)

    respond_to do |format|
      if @menstrual_cycle.save
        format.html { redirect_to @menstrual_cycle, notice: 'Menstrual cycle was successfully created.' }
        format.json { render :show, status: :created, location: @menstrual_cycle }
      else
        format.html { render :new }
        format.json { render json: @menstrual_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menstrual_cycles/1
  # PATCH/PUT /menstrual_cycles/1.json
  def update
    respond_to do |format|
      if @menstrual_cycle.update(menstrual_cycle_params)
        format.html { redirect_to @menstrual_cycle, notice: 'Menstrual cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @menstrual_cycle }
      else
        format.html { render :edit }
        format.json { render json: @menstrual_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menstrual_cycles/1
  # DELETE /menstrual_cycles/1.json
  def destroy
    @menstrual_cycle.destroy
    respond_to do |format|
      format.html { redirect_to menstrual_cycles_url, notice: 'Menstrual cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menstrual_cycle
      @menstrual_cycle = current_user.menstrual_cycles.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menstrual_cycle_params
      params.require(:menstrual_cycle).permit(:user_id, :starting_date, :ending_date)
    end
end
