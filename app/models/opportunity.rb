class Opportunity < SalesforceModel
  #self.table_name = ENV['HEROKUCONNECT_SCHEMA'] + '.contact'
  self.table_name = 'opportunity'
  belongs_to :account, :primary_key => 'sfid', :foreign_key => 'accountid'

  #attr_protected :createddate, :systemmodstamp, :lastmodifieddate
end
