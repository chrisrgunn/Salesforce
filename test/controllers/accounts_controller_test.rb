require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post :create, account: { _hc_err: @account._hc_err, _hc_lastop: @account._hc_lastop, account_manager__c: @account.account_manager__c, account_md_d__c: @account.account_md_d__c, account_md_d_email__c: @account.account_md_d_email__c, account_md_d_name__c: @account.account_md_d_name__c, account_md_d_phone__c: @account.account_md_d_phone__c, account_md_d_title__c: @account.account_md_d_title__c, accountmanager__c: @account.accountmanager__c, accountsitetype__c: @account.accountsitetype__c, accountsource: @account.accountsource, accountteam__c: @account.accountteam__c, annualrevenue: @account.annualrevenue, assets_reported_date__c: @account.assets_reported_date__c, createddate: @account.createddate, isdeleted: @account.isdeleted, name: @account.name, phone: @account.phone, recordtypeid: @account.recordtypeid, sfid: @account.sfid, systemmodstamp: @account.systemmodstamp, website: @account.website }
    end

    assert_redirected_to account_path(assigns(:account))
  end

  test "should show account" do
    get :show, id: @account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account
    assert_response :success
  end

  test "should update account" do
    patch :update, id: @account, account: { _hc_err: @account._hc_err, _hc_lastop: @account._hc_lastop, account_manager__c: @account.account_manager__c, account_md_d__c: @account.account_md_d__c, account_md_d_email__c: @account.account_md_d_email__c, account_md_d_name__c: @account.account_md_d_name__c, account_md_d_phone__c: @account.account_md_d_phone__c, account_md_d_title__c: @account.account_md_d_title__c, accountmanager__c: @account.accountmanager__c, accountsitetype__c: @account.accountsitetype__c, accountsource: @account.accountsource, accountteam__c: @account.accountteam__c, annualrevenue: @account.annualrevenue, assets_reported_date__c: @account.assets_reported_date__c, createddate: @account.createddate, isdeleted: @account.isdeleted, name: @account.name, phone: @account.phone, recordtypeid: @account.recordtypeid, sfid: @account.sfid, systemmodstamp: @account.systemmodstamp, website: @account.website }
    assert_redirected_to account_path(assigns(:account))
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete :destroy, id: @account
    end

    assert_redirected_to accounts_path
  end
end
