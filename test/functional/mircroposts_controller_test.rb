require 'test_helper'

class MircropostsControllerTest < ActionController::TestCase
  setup do
    @mircropost = mircroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mircroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mircropost" do
    assert_difference('Mircropost.count') do
      post :create, :mircropost => { :content => @mircropost.content, :user_id => @mircropost.user_id }
    end

    assert_redirected_to mircropost_path(assigns(:mircropost))
  end

  test "should show mircropost" do
    get :show, :id => @mircropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mircropost
    assert_response :success
  end

  test "should update mircropost" do
    put :update, :id => @mircropost, :mircropost => { :content => @mircropost.content, :user_id => @mircropost.user_id }
    assert_redirected_to mircropost_path(assigns(:mircropost))
  end

  test "should destroy mircropost" do
    assert_difference('Mircropost.count', -1) do
      delete :destroy, :id => @mircropost
    end

    assert_redirected_to mircroposts_path
  end
end
