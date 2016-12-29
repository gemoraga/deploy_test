require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get link1" do
    get companies_link1_url
    assert_response :success
  end

  test "should get link2" do
    get companies_link2_url
    assert_response :success
  end

  test "should get link3" do
    get companies_link3_url
    assert_response :success
  end

end
