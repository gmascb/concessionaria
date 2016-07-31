class LancamentosController < ApplicationController
  before_action :set_lancamento, only: [:show, :edit, :update, :destroy]

  # GET /lancamentos
  def index
    @lancamentos = Lancamento.all
  end

  # GET /lancamentos/1
  def show
  end

  # GET /lancamentos/new
  def new
    @lancamento = Lancamento.new
  end

  # GET /lancamentos/1/edit
  def edit
  end

  # POST /lancamentos
  def create
    @lancamento = Lancamento.new(lancamento_params)

    if @lancamento.save
      redirect_to @lancamento, notice: 'Lancamento was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lancamentos/1
  def update
    if @lancamento.update(lancamento_params)
      redirect_to @lancamento, notice: 'Lancamento was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lancamentos/1
  def destroy
    @lancamento.destroy
    redirect_to lancamentos_url, notice: 'Lancamento was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lancamento
      @lancamento = Lancamento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lancamento_params
      params.require(:lancamento).permit(:status, :Ficha_id, :Customer_id, :dtvencimento, :dtemissao, :dtpagamento, :historico, :valor, :valorpago, :acrescimo, :desconto)
    end
end
