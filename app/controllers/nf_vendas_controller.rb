class NfVendasController < ApplicationController
  before_action :set_nf_venda, only: [:show, :edit, :update, :destroy]

  # GET /nf_vendas
  def index
    check_user
    @nf_vendas = NfVenda.all
  end

  # GET /nf_vendas/1
  def show
    check_user
  end

  # GET /nf_vendas/new
  def new
    check_user
    @nf_venda = NfVenda.new
  end

  # GET /nf_vendas/1/edit
  def edit
    check_user
  end

  # POST /nf_vendas
  def create
    @nf_venda = NfVenda.new(nf_venda_params)

    if @nf_venda.save
      redirect_to @nf_venda, notice: 'Nf venda was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /nf_vendas/1
  def update
    if @nf_venda.update(nf_venda_params)
      redirect_to @nf_venda, notice: 'Nf venda was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /nf_vendas/1
  def destroy
    @nf_venda.destroy
    redirect_to nf_vendas_url, notice: 'Nf venda was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nf_venda
      @nf_venda = NfVenda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nf_venda_params
      params.require(:nf_venda).permit(:numerodocumento, :valor, :desconto, :acrescimo, :Ficha_id)
    end
end
