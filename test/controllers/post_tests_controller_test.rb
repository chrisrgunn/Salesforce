require 'test_helper'

class PostTestsControllerTest < ActionController::TestCase
  setup do
    @post_test = post_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_test" do
    assert_difference('PostTest.count') do
      post :create, post_test: { _hc_err: @post_test._hc_err, _hc_lastop: @post_test._hc_lastop, account_name_local__c: @post_test.account_name_local__c, account_record_type__c: @post_test.account_record_type__c, accountid: @post_test.accountid, acct_global_account_executive__c: @post_test.acct_global_account_executive__c, createddate: @post_test.createddate, email: @post_test.email, firstname: @post_test.firstname, firstnamelocal: @post_test.firstnamelocal, function__c: @post_test.function__c, homephone: @post_test.homephone, isdeleted: @post_test.isdeleted, lastname: @post_test.lastname, lastnamelocal: @post_test.lastnamelocal, level__c: @post_test.level__c, name: @post_test.name, phone: @post_test.phone, primary_functional_role__c: @post_test.primary_functional_role__c, sfid: @post_test.sfid, systemmodstamp: @post_test.systemmodstamp }
    end

    assert_redirected_to post_test_path(assigns(:post_test))
  end

  test "should show post_test" do
    get :show, id: @post_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_test
    assert_response :success
  end

  test "should update post_test" do
    patch :update, id: @post_test, post_test: { _hc_err: @post_test._hc_err, _hc_lastop: @post_test._hc_lastop, account_name_local__c: @post_test.account_name_local__c, account_record_type__c: @post_test.account_record_type__c, accountid: @post_test.accountid, acct_global_account_executive__c: @post_test.acct_global_account_executive__c, createddate: @post_test.createddate, email: @post_test.email, firstname: @post_test.firstname, firstnamelocal: @post_test.firstnamelocal, function__c: @post_test.function__c, homephone: @post_test.homephone, isdeleted: @post_test.isdeleted, lastname: @post_test.lastname, lastnamelocal: @post_test.lastnamelocal, level__c: @post_test.level__c, name: @post_test.name, phone: @post_test.phone, primary_functional_role__c: @post_test.primary_functional_role__c, sfid: @post_test.sfid, systemmodstamp: @post_test.systemmodstamp }
    assert_redirected_to post_test_path(assigns(:post_test))
  end

  test "should destroy post_test" do
    assert_difference('PostTest.count', -1) do
      delete :destroy, id: @post_test
    end

    assert_redirected_to post_tests_path
  end
end
