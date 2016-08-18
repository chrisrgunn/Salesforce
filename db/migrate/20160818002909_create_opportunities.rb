class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.date :proposalduedate__c
      t.datetime :systemmodstamp
      t.string :accountid
      t.string :currencyisocode
      t.string :stagename
      t.boolean :isdeleted
      t.date :closedate
      t.string :opportunity_md_d__c
      t.string :leadsource
      t.string :_hc_lastop
      t.string :primary_key_buyer__c
      t.float :probability
      t.float :amount
      t.text :_hc_err
      t.string :type
      t.string :sfid
      t.string :natureofwork__c
      t.string :pursuitteam__c
      t.datetime :createddate
      t.string :name

      t.timestamps null: false
    end
  end
end
