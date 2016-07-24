class ContaController < ApplicationController
  before_action :set_contum, only: [:show, :edit, :update, :destroy]

  # GET /conta
  def index
    @conta = Contum.all
  end

  # GET /conta/1
  def show
  end

  # GET /conta/new
  def new
    @contum = Contum.new
  end

  # GET /conta/1/edit
  def edit
  end

  # POST /conta
  def create
    @contum = Contum.new(contum_params)

    if @contum.save
      redirect_to @contum, notice: 'Contum was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /conta/1
  def update
    if @contum.update(contum_params)
      redirect_to @contum, notice: 'Contum was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /conta/1
  def destroy
    @contum.destroy
    redirect_to conta_url, notice: 'Contum was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contum
      @contum = Contum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contum_params
      params.require(:contum).permit(:vencimento, :emissao, :Ficha_id, :Customer_id, :historico, :datapagamento, :status)
    end
end
