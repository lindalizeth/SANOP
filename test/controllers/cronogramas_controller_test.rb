require 'test_helper'

class CronogramasControllerTest < ActionController::TestCase
  setup do
    @cronograma = cronogramas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cronogramas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cronograma" do
    assert_difference('Cronograma.count') do
      post :create, cronograma: { descripcion: @cronograma.descripcion, fecha: @cronograma.fecha, ficha_grupo: @cronograma.ficha_grupo, lugar_salida: @cronograma.lugar_salida, programa: @cronograma.programa, tipo_salida_id: @cronograma.tipo_salida_id }
    end

    assert_redirected_to cronograma_path(assigns(:cronograma))
  end

  test "should show cronograma" do
    get :show, id: @cronograma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cronograma
    assert_response :success
  end

  test "should update cronograma" do
    patch :update, id: @cronograma, cronograma: { descripcion: @cronograma.descripcion, fecha: @cronograma.fecha, ficha_grupo: @cronograma.ficha_grupo, lugar_salida: @cronograma.lugar_salida, programa: @cronograma.programa, tipo_salida_id: @cronograma.tipo_salida_id }
    assert_redirected_to cronograma_path(assigns(:cronograma))
  end

  test "should destroy cronograma" do
    assert_difference('Cronograma.count', -1) do
      delete :destroy, id: @cronograma
    end

    assert_redirected_to cronogramas_path
  end
end
