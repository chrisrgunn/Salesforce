class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :accountteam__c
      t.string :_hc_lastop
      t.text :_hc_err
      t.string :account_md_d__c
      t.string :account_md_d_title__c
      t.string :phone
      t.boolean :isdeleted
      t.string :account_md_d_email__c
      t.string :account_md_d_name__c
      t.float :annualrevenue
      t.string :recordtypeid
      t.date :assets_reported_date__c
      t.string :accountmanager__c
      t.string :name
      t.string :account_manager__c
      t.datetime :systemmodstamp
      t.string :account_md_d_phone__c
      t.string :accountsitetype__c
      t.string :accountsource
      t.datetime :createddate
      t.string :website
      t.string :sfid

      t.timestamps null: false
    end
  end
end
