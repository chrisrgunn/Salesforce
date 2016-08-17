class PostTestsController < ApplicationController
  before_action :set_post_test, only: [:show, :edit, :update, :destroy]

  # GET /post_tests
  # GET /post_tests.json
  def index
    @post_tests = PostTest.all
  end

  # GET /post_tests/1
  # GET /post_tests/1.json
  def show
  end

  # GET /post_tests/new
  def new
    @post_test = PostTest.new
  end

  # GET /post_tests/1/edit
  def edit
  end

  # POST /post_tests
  # POST /post_tests.json
  def create
    @post_test = PostTest.new(post_test_params)

    respond_to do |format|
      if @post_test.save
        format.html { redirect_to @post_test, notice: 'Post test was successfully created.' }
        format.json { render :show, status: :created, location: @post_test }
      else
        format.html { render :new }
        format.json { render json: @post_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_tests/1
  # PATCH/PUT /post_tests/1.json
  def update
    respond_to do |format|
      if @post_test.update(post_test_params)
        format.html { redirect_to @post_test, notice: 'Post test was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_test }
      else
        format.html { render :edit }
        format.json { render json: @post_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_tests/1
  # DELETE /post_tests/1.json
  def destroy
    @post_test.destroy
    respond_to do |format|
      format.html { redirect_to post_tests_url, notice: 'Post test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_test
      @post_test = PostTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_test_params
      params.require(:post_test).permit(:_hc_lastop, :sfid, :createddate, :isdeleted, :name, :systemmodstamp, :_hc_err, :accountid, :email, :firstname, :acct_global_account_executive__c, :lastnamelocal, :firstnamelocal, :phone, :function__c, :account_record_type__c, :level__c, :lastname, :primary_functional_role__c, :account_name_local__c, :homephone)
    end
end
