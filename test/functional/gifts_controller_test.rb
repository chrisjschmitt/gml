require 'test_helper'

class GiftsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:gifts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_gift
    assert_difference('Gift.count') do
      post :create, :gift => { }
    end

    assert_redirected_to gift_path(assigns(:gift))
  end

  def test_should_show_gift
    get :show, :id => gifts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => gifts(:one).id
    assert_response :success
  end

  def test_should_update_gift
    put :update, :id => gifts(:one).id, :gift => { }
    assert_redirected_to gift_path(assigns(:gift))
  end

  def test_should_destroy_gift
    assert_difference('Gift.count', -1) do
      delete :destroy, :id => gifts(:one).id
    end

    assert_redirected_to gifts_path
  end
end
