require File.dirname(__FILE__) + '/../test_helper'

class ProductCategoriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:product_categories)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_product_category
    assert_difference('ProductCategory.count') do
      post :create, :product_category => { }
    end

    assert_redirected_to product_category_path(assigns(:product_category))
  end

  def test_should_show_product_category
    get :show, :id => product_categories(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => product_categories(:one).id
    assert_response :success
  end

  def test_should_update_product_category
    put :update, :id => product_categories(:one).id, :product_category => { }
    assert_redirected_to product_category_path(assigns(:product_category))
  end

  def test_should_destroy_product_category
    assert_difference('ProductCategory.count', -1) do
      delete :destroy, :id => product_categories(:one).id
    end

    assert_redirected_to product_categories_path
  end
end
