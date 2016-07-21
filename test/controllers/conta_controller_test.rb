require 'test_helper'

class ContaControllerTest < ActionController::TestCase
  setup do
    @contum = conta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contum" do
    assert_difference('Contum.count') do
      post :create, contum: { Customer_id: @contum.Customer_id, Ficha_id: @contum.Ficha_id, emissao: @contum.emissao, historico: @contum.historico, valor: @contum.valor, vencimento: @contum.vencimento }
    end

    assert_redirected_to contum_path(assigns(:contum))
  end

  test "should show contum" do
    get :show, id: @contum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contum
    assert_response :success
  end

  test "should update contum" do
    patch :update, id: @contum, contum: { Customer_id: @contum.Customer_id, Ficha_id: @contum.Ficha_id, emissao: @contum.emissao, historico: @contum.historico, valor: @contum.valor, vencimento: @contum.vencimento }
    assert_redirected_to contum_path(assigns(:contum))
  end

  test "should destroy contum" do
    assert_difference('Contum.count', -1) do
      delete :destroy, id: @contum
    end

    assert_redirected_to conta_path
  end
end
