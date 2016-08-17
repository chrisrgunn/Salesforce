class SalesforceController < ApplicationController


  def contacts
    #@page = (params[:page] || 1).to_i
    @contacts = Salesforce::Contact.all
    #@contacts = Contact.order("lastname").offset(@page*20).limit(20).all()
    render :layout => false
  end

end