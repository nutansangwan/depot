require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    nutan = users(:one)
    post :create, name: nutan.name, password: 'sangwan'
    assert_redirected_to admin_url
    assert_equal dave.id, session[:user_id]
  end
 
  test "should fail login" do
     nutan = users(:one)
     post :create, name: nutan.name, password: 'wrong'
     assert_redirected_to login_url
   end 
   
  test "should logout" do
     delete :destroy
     assert_redirected_to store_url
  end

 
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
