require 'test_helper'

class NfVendasControllerTest < ActionController::TestCase
  setup do
    @nf_venda = nf_vendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nf_vendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nf_venda" do
    assert_difference('NfVenda.count') do
      post :create, nf_venda: { Ficha_id: @nf_venda.Ficha_id, acrescimo: @nf_venda.acrescimo, desconto: @nf_venda.desconto, numerodocumento: @nf_venda.numerodocumento, valor: @nf_venda.valor }
    end

    assert_redirected_to nf_venda_path(assigns(:nf_venda))
  end

  test "should show nf_venda" do
    get :show, id: @nf_venda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nf_venda
    assert_response :success
  end

  test "should update nf_venda" do
    patch :update, id: @nf_venda, nf_venda: { Ficha_id: @nf_venda.Ficha_id, acrescimo: @nf_venda.acrescimo, desconto: @nf_venda.desconto, numerodocumento: @nf_venda.numerodocumento, valor: @nf_venda.valor }
    assert_redirected_to nf_venda_path(assigns(:nf_venda))
  end

  test "should destroy nf_venda" do
    assert_difference('NfVenda.count', -1) do
      delete :destroy, id: @nf_venda
    end

    assert_redirected_to nf_vendas_path
  end
end
