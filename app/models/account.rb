class Account < SalesforceModel
  #self.table_name = ENV['HEROKUCONNECT_SCHEMA'] + '.contact'
  self.table_name = 'account'
  has_many :contacts, :primary_key => 'sfid', :foreign_key => 'accountid'

  #attr_protected :createddate, :systemmodstamp, :lastmodifieddate
end