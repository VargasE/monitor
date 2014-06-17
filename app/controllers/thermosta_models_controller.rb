class ThermostaModelsController < ApplicationController
  before_action :set_thermosta_model, only: [:show, :edit, :update, :destroy]

  # GET /thermosta_models
  # GET /thermosta_models.json
  def index
    @thermosta_models = ThermostaModel.all
  end

  # GET /thermosta_models/1
  # GET /thermosta_models/1.json
  def show
  end

  # GET /thermosta_models/new
  def new
    @therm_id= params[:thermostat_id]
    @therm_id=@therm_id.to_i
    @thermosta_model = ThermostaModel.new
    @thermosta_model.thermostat_id=@therm_id
    @thermosta_model.save


  end

  # GET /thermosta_models/1/edit
  def edit
  end

  # POST /thermosta_models
  # POST /thermosta_models.json
  def create
    @thermosta_model = ThermostaModel.new(thermosta_model_params)

    respond_to do |format|
      if @thermosta_model.save
        format.html { redirect_to @thermosta_model, notice: 'Thermosta model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thermosta_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @thermosta_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermosta_models/1
  # PATCH/PUT /thermosta_models/1.json
  def update
    respond_to do |format|
      if @thermosta_model.update(thermosta_model_params)
        format.html { redirect_to @thermosta_model, notice: 'Thermosta model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thermosta_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermosta_models/1
  # DELETE /thermosta_models/1.json
  def destroy
    @thermosta_model.destroy
    respond_to do |format|
      format.html { redirect_to thermosta_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermosta_model
      @thermosta_model = ThermostaModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermosta_model_params
      params.require(:thermosta_model).permit(:name, :thermostat_id)
    end
end
