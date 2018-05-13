require 'test_helper'

class BooleansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boolean = booleans(:one)
  end

  test "should get index" do
    get booleans_url, as: :json
    assert_response :success
  end

  test "should create boolean" do
    assert_difference('Boolean.count') do
      post booleans_url, params: { boolean: { id: @boolean.id, name: @boolean.name, val: @boolean.val } }, as: :json
    end

    assert_response 201
  end

  test "should show boolean" do
    get boolean_url(@boolean), as: :json
    assert_response :success
  end

  test "should update boolean" do
    patch boolean_url(@boolean), params: { boolean: { id: @boolean.id, name: @boolean.name, val: @boolean.val } }, as: :json
    assert_response 200
  end

  test "should destroy boolean" do
    assert_difference('Boolean.count', -1) do
      delete boolean_url(@boolean), as: :json
    end

    assert_response 204
  end
end
