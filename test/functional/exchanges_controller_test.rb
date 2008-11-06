require 'test_helper'

class ExchangesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:exchanges)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_exchange
    assert_difference('Exchange.count') do
      post :create, :exchange => { }
    end

    assert_redirected_to exchange_path(assigns(:exchange))
  end

  def test_should_show_exchange
    get :show, :id => exchanges(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => exchanges(:one).id
    assert_response :success
  end

  def test_should_update_exchange
    put :update, :id => exchanges(:one).id, :exchange => { }
    assert_redirected_to exchange_path(assigns(:exchange))
  end

  def test_should_destroy_exchange
    assert_difference('Exchange.count', -1) do
      delete :destroy, :id => exchanges(:one).id
    end

    assert_redirected_to exchanges_path
  end
end
