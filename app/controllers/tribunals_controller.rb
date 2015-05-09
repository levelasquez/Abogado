class TribunalsController < ApplicationController
  before_action :set_tribunal, only: [:show, :edit, :update, :destroy]

  # GET /tribunals
  # GET /tribunals.json
  def index
    @tribunals = Tribunal.all
  end

  # GET /tribunals/1
  # GET /tribunals/1.json
  def show
  end

  # GET /tribunals/new
  def new
    @tribunal = Tribunal.new
  end

  # GET /tribunals/1/edit
  def edit
  end

  # POST /tribunals
  # POST /tribunals.json
  def create
    @tribunal = Tribunal.new(tribunal_params)

    respond_to do |format|
      if @tribunal.save
        format.html { redirect_to tribunals_path, notice: 'EL Tribunal se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @tribunal }
      else
        format.html { render :new }
        format.json { render json: @tribunal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tribunals/1
  # PATCH/PUT /tribunals/1.json
  def update
    respond_to do |format|
      if @tribunal.update(tribunal_params)
        format.html { redirect_to tribunals_path, notice: 'El Tribunal ha sido actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @tribunal }
      else
        format.html { render :edit }
        format.json { render json: @tribunal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tribunals/1
  # DELETE /tribunals/1.json
  def destroy
    @tribunal.destroy
    respond_to do |format|
      format.html { redirect_to tribunals_url, notice: 'El Tribunal ha sido eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tribunal
      @tribunal = Tribunal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tribunal_params
      params.require(:tribunal).permit(:area, :instancia, :tipo, :juez, :direccion, :telefono)
    end
end
