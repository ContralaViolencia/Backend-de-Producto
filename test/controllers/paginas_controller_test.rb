require 'test_helper'

class PaginasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagina = paginas(:one)
  end

  test "should get index" do
    get paginas_url, as: :json
    assert_response :success
  end

  test "should create pagina" do
    assert_difference('Pagina.count') do
      post paginas_url, params: { pagina: { color: @pagina.color, contenido: @pagina.contenido, enunciado: @pagina.enunciado, icono: @pagina.icono, parametro_id: @pagina.parametro_id, ruta: @pagina.ruta, subTitulo: @pagina.subTitulo, titulo: @pagina.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show pagina" do
    get pagina_url(@pagina), as: :json
    assert_response :success
  end

  test "should update pagina" do
    patch pagina_url(@pagina), params: { pagina: { color: @pagina.color, contenido: @pagina.contenido, enunciado: @pagina.enunciado, icono: @pagina.icono, parametro_id: @pagina.parametro_id, ruta: @pagina.ruta, subTitulo: @pagina.subTitulo, titulo: @pagina.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy pagina" do
    assert_difference('Pagina.count', -1) do
      delete pagina_url(@pagina), as: :json
    end

    assert_response 204
  end
end
