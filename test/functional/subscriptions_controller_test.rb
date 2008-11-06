require 'test_helper'

class SubscriptionsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:subscriptions)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_subscription
    assert_difference('Subscription.count') do
      post :create, :subscription => { }
    end

    assert_redirected_to subscription_path(assigns(:subscription))
  end

  def test_should_show_subscription
    get :show, :id => subscriptions(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => subscriptions(:one).id
    assert_response :success
  end

  def test_should_update_subscription
    put :update, :id => subscriptions(:one).id, :subscription => { }
    assert_redirected_to subscription_path(assigns(:subscription))
  end

  def test_should_destroy_subscription
    assert_difference('Subscription.count', -1) do
      delete :destroy, :id => subscriptions(:one).id
    end

    assert_redirected_to subscriptions_path
  end
end
