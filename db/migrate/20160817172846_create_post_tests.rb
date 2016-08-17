class CreatePostTests < ActiveRecord::Migration
  def change
    create_table :post_tests do |t|
      t.string :_hc_lastop
      t.string :sfid
      t.string :createddate
      t.boolean :isdeleted
      t.string :name
      t.datetime :systemmodstamp
      t.text :_hc_err
      t.string :accountid
      t.string :email
      t.string :firstname
      t.string :acct_global_account_executive__c
      t.string :lastnamelocal
      t.string :firstnamelocal
      t.string :phone
      t.string :function__c
      t.string :account_record_type__c
      t.string :level__c
      t.string :lastname
      t.string :primary_functional_role__c
      t.string :account_name_local__c
      t.string :homephone

      t.timestamps null: false
    end
  end
end
