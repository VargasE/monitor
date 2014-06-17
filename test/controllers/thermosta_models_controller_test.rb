require 'test_helper'

class ThermostaModelsControllerTest < ActionController::TestCase
  setup do
    @thermosta_model = thermosta_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermosta_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermosta_model" do
    assert_difference('ThermostaModel.count') do
      post :create, thermosta_model: { name: @thermosta_model.name, thermostat_id: @thermosta_model.thermostat_id }
    end

    assert_redirected_to thermosta_model_path(assigns(:thermosta_model))
  end

  test "should show thermosta_model" do
    get :show, id: @thermosta_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermosta_model
    assert_response :success
  end

  test "should update thermosta_model" do
    patch :update, id: @thermosta_model, thermosta_model: { name: @thermosta_model.name, thermostat_id: @thermosta_model.thermostat_id }
    assert_redirected_to thermosta_model_path(assigns(:thermosta_model))
  end

  test "should destroy thermosta_model" do
    assert_difference('ThermostaModel.count', -1) do
      delete :destroy, id: @thermosta_model
    end

    assert_redirected_to thermosta_models_path
  end
end
