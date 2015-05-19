class AbogadoPsController < ApplicationController
  before_action :set_abogado_p, only: [:show, :edit, :update, :destroy]

  # GET /abogado_ps
  # GET /abogado_ps.json
  def index
    @abogado_ps = AbogadoP.all
  end

  # GET /abogado_ps/1
  # GET /abogado_ps/1.json
  def show
  end

  # GET /abogado_ps/new
  def new
    @abogado_p = AbogadoP.new
  end

  # GET /abogado_ps/1/edit
  def edit
  end

  # POST /abogado_ps
  # POST /abogado_ps.json
  def create
    @abogado_p = AbogadoP.new(abogado_p_params)

    respond_to do |format|
      if @abogado_p.save
        format.html { redirect_to abogado_ps_path, notice: 'El abogado se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @abogado_p }
      else
        format.html { render :new }
        format.json { render json: @abogado_p.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abogado_ps/1
  # PATCH/PUT /abogado_ps/1.json
  def update
    respond_to do |format|
      if @abogado_p.update(abogado_p_params)
        format.html { redirect_to abogado_ps_path, notice: 'El abogado ha sido actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @abogado_p }
      else
        format.html { render :edit }
        format.json { render json: @abogado_p.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abogado_ps/1
  # DELETE /abogado_ps/1.json
  def destroy
    @abogado_p.destroy
    respond_to do |format|
      format.html { redirect_to abogado_ps_url, notice: 'El abogado ha sido eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abogado_p
      @abogado_p = AbogadoP.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abogado_p_params
      params.require(:abogado_p).permit(:nombre, :apellido, :ipsa, :telefono, :direccion, :cedula)
    end
end
