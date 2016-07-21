require 'test_helper'

class FichasControllerTest < ActionController::TestCase
  setup do
    @ficha = fichas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fichas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha" do
    assert_difference('Ficha.count') do
      post :create, ficha: { Banco_id: @ficha.Banco_id, Cars_id: @ficha.Cars_id, Customer_id: @ficha.Customer_id, MeioPagamento_id: @ficha.MeioPagamento_id, Vendedor_id: @ficha.Vendedor_id, coef: @ficha.coef, data: @ficha.data, numparcelas: @ficha.numparcelas, tipopfin: @ficha.tipopfin, valfinanceiro: @ficha.valfinanceiro, valorparcela: @ficha.valorparcela, valortotal: @ficha.valortotal }
    end

    assert_redirected_to ficha_path(assigns(:ficha))
  end

  test "should show ficha" do
    get :show, id: @ficha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha
    assert_response :success
  end

  test "should update ficha" do
    patch :update, id: @ficha, ficha: { Banco_id: @ficha.Banco_id, Cars_id: @ficha.Cars_id, Customer_id: @ficha.Customer_id, MeioPagamento_id: @ficha.MeioPagamento_id, Vendedor_id: @ficha.Vendedor_id, coef: @ficha.coef, data: @ficha.data, numparcelas: @ficha.numparcelas, tipopfin: @ficha.tipopfin, valfinanceiro: @ficha.valfinanceiro, valorparcela: @ficha.valorparcela, valortotal: @ficha.valortotal }
    assert_redirected_to ficha_path(assigns(:ficha))
  end

  test "should destroy ficha" do
    assert_difference('Ficha.count', -1) do
      delete :destroy, id: @ficha
    end

    assert_redirected_to fichas_path
  end
end
