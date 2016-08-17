class ContactsController < ApplicationController


  def contacts
    #@page = (params[:page] || 1).to_i
    @contacts = Contact.find :all
    #@a_contact = Contact.find :all
    #@contacts = Contact.find_by_AccountID(params[:id])
    #@contacts = Contact.order("lastname").offset(@page*20).limit(20).all()
    render :layout => false
  end

  def index
    @page = (params[:page] || 1).to_i
    @contacts = Contact.order('id').all
  end

end
