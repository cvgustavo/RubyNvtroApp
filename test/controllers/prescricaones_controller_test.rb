require 'test_helper'

class PrescricaonesControllerTest < ActionController::TestCase
  setup do
    @prescricaone = prescricaones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prescricaones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prescricaone" do
    assert_difference('Prescricaone.count') do
      post :create, prescricaone: { autorizacaourl: @prescricaone.autorizacaourl, checagemurl: @prescricaone.checagemurl, contamedicaurl: @prescricaone.contamedicaurl, custo: @prescricaone.custo, data: @prescricaone.data, entregaurl: @prescricaone.entregaurl, equipo: @prescricaone.equipo, internacao_id: @prescricaone.internacao_id, motoqueiro: @prescricaone.motoqueiro, nutricionista: @prescricaone.nutricionista, paciente_id: @prescricaone.paciente_id, valorfaturado: @prescricaone.valorfaturado }
    end

    assert_redirected_to prescricaone_path(assigns(:prescricaone))
  end

  test "should show prescricaone" do
    get :show, id: @prescricaone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prescricaone
    assert_response :success
  end

  test "should update prescricaone" do
    patch :update, id: @prescricaone, prescricaone: { autorizacaourl: @prescricaone.autorizacaourl, checagemurl: @prescricaone.checagemurl, contamedicaurl: @prescricaone.contamedicaurl, custo: @prescricaone.custo, data: @prescricaone.data, entregaurl: @prescricaone.entregaurl, equipo: @prescricaone.equipo, internacao_id: @prescricaone.internacao_id, motoqueiro: @prescricaone.motoqueiro, nutricionista: @prescricaone.nutricionista, paciente_id: @prescricaone.paciente_id, valorfaturado: @prescricaone.valorfaturado }
    assert_redirected_to prescricaone_path(assigns(:prescricaone))
  end

  test "should destroy prescricaone" do
    assert_difference('Prescricaone.count', -1) do
      delete :destroy, id: @prescricaone
    end

    assert_redirected_to prescricaones_path
  end
end
