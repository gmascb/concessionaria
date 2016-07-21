class FichasController < ApplicationController
  before_action :set_ficha, only: [:show, :edit, :update, :destroy]

  # GET /fichas
  def index
    if !current_user
      redirect_to root_url
    else
      @fichas = Ficha.all
    end
  end

  # GET /fichas/1
  def show
  end

  # GET /fichas/new
  def new
    @ficha = Ficha.new
  end

  # GET /fichas/1/edit
  def edit
  end

  # POST /fichas
  def create
    @ficha = Ficha.new(ficha_params)

    if @ficha.save
      redirect_to @ficha, notice: 'Ficha was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fichas/1
  def update
    if @ficha.update(ficha_params)
      redirect_to @ficha, notice: 'Ficha was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fichas/1
  def destroy
    @ficha.destroy
    redirect_to fichas_url, notice: 'Ficha was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha
      @ficha = Ficha.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ficha_params
      params.require(:ficha).permit(:data, :Vendedor_id, :Banco_id, :tipopfin, :coef, :valfinanceiro, :numparcelas, :valorparcela, :valortotal, :Customer_id, :Cars_id, :MeioPagamento_id)
    end
end
