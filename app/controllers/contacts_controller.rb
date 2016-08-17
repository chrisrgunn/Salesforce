class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def contacts
    #@page = (params[:page] || 1).to_i
    @contacts = Contact.find :all
    #@a_contact = Contact.find :all
    #@contacts = Contact.find_by_AccountID(params[:id])
    #@contacts = Contact.order("lastname").offset(@page*20).limit(20).all()
    render :layout => false
  end

  # GET /contacts
  # GET /contacts.json
  def index
    @page = (params[:page] || 0).to_i
    @contacts = Contact.order('id').offset(@page*20).limit(20).all()
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_tests/1
  # PATCH/PUT /post_tests/1.json
  def update
    respond_to do |format|
      if @contact.update(post_test_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_tests/1
  # DELETE /post_tests/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to post_tests_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:post_test).permit(:_hc_lastop, :sfid, :createddate, :isdeleted, :name, :systemmodstamp, :_hc_err, :accountid, :email, :firstname, :acct_global_account_executive__c, :lastnamelocal, :firstnamelocal, :phone, :function__c, :account_record_type__c, :level__c, :lastname, :primary_functional_role__c, :account_name_local__c, :homephone)
    end
end
