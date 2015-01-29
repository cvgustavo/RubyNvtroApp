class PrescricaonesController < ApplicationController
  before_action :set_prescricaone, only: [:show, :edit, :update, :destroy]

  # GET /prescricaones
  # GET /prescricaones.json
  def index
    @prescricaones = Prescricaone.includes(:etapanes).all
  end

  # GET /prescricaones/1
  # GET /prescricaones/1.json
  def show
  end

  # GET /prescricaones/new
  def new
    @prescricaone = Prescricaone.new
  end

  # GET /prescricaones/1/edit
  def edit
  end

  # POST /prescricaones
  # POST /prescricaones.json
  def create
    @prescricaone = Prescricaone.new(prescricaone_params)

    respond_to do |format|
      if @prescricaone.save
        format.html { redirect_to @prescricaone, notice: 'Prescricaone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prescricaone }
      else
        format.html { render action: 'new' }
        format.json { render json: @prescricaone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescricaones/1
  # PATCH/PUT /prescricaones/1.json
  def update
    respond_to do |format|
      if @prescricaone.update(prescricaone_params)
        format.html { redirect_to @prescricaone, notice: 'Prescricaone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prescricaone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescricaones/1
  # DELETE /prescricaones/1.json
  def destroy
    @prescricaone.destroy
    respond_to do |format|
      format.html { redirect_to prescricaones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescricaone
      @prescricaone = Prescricaone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescricaone_params
      params.require(:prescricaone).permit(:data, :custo, :valorfaturado, :paciente_id, :internacao_id, :nutricionista, :equipo, :autorizacaourl, :contamedicaurl, :checagemurl, :entregaurl, :motoqueiro, etapasnes_attributes: [:prescricaone_id, :qtd, :volume, :_destroy, linhaetapanes_attributes: [:produto, :qtd, :custo, :_destroy]])
    
    end
end
