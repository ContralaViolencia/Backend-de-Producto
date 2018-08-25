require 'test_helper'

class ParametrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parametro = parametros(:one)
  end

  test "should get index" do
    get parametros_url, as: :json
    assert_response :success
  end

  test "should create parametro" do
    assert_difference('Parametro.count') do
      post parametros_url, params: { parametro: { activo: @parametro.activo, nombre: @parametro.nombre, pertenece: @parametro.pertenece, tipo: @parametro.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show parametro" do
    get parametro_url(@parametro), as: :json
    assert_response :success
  end

  test "should update parametro" do
    patch parametro_url(@parametro), params: { parametro: { activo: @parametro.activo, nombre: @parametro.nombre, pertenece: @parametro.pertenece, tipo: @parametro.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy parametro" do
    assert_difference('Parametro.count', -1) do
      delete parametro_url(@parametro), as: :json
    end

    assert_response 204
  end
end
