require 'test_helper'

class ContactFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contact_forms_new_url
    assert_response :success
  end

end
