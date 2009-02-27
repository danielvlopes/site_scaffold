require File.dirname(__FILE__) + '/../test_helper'

class ProductsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_product
    assert_difference('Product.count') do
      post :create, :product => { }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  def test_should_show_product
    get :show, :id => products(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => products(:one).id
    assert_response :success
  end

  def test_should_update_product
    put :update, :id => products(:one).id, :product => { }
    assert_redirected_to product_path(assigns(:product))
  end

  def test_should_destroy_product
    assert_difference('Product.count', -1) do
      delete :destroy, :id => products(:one).id
    end

    assert_redirected_to products_path
  end
end
