class NewsletterusersController < ApplicationController
  before_action :set_newsletteruser, only: [:show, :edit, :update, :destroy]

  # GET /newsletterusers
  # GET /newsletterusers.json
  def index
    @newsletterusers = Newsletteruser.all
  end

  # GET /newsletterusers/1
  # GET /newsletterusers/1.json
  def show
  end

  # GET /newsletterusers/new
  def new
    @newsletteruser = Newsletteruser.new
  end

  # GET /newsletterusers/1/edit
  def edit
  end

  # POST /newsletterusers
  # POST /newsletterusers.json
  def create
    @newsletteruser = Newsletteruser.new(newsletteruser_params)

    respond_to do |format|
      if @newsletteruser.save
        format.html { redirect_to @newsletteruser, notice: 'Newsletteruser was successfully created.' }
        format.json { render :show, status: :created, location: @newsletteruser }
      else
        format.html { render :new }
        format.json { render json: @newsletteruser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletterusers/1
  # PATCH/PUT /newsletterusers/1.json
  def update
    respond_to do |format|
      if @newsletteruser.update(newsletteruser_params)
        format.html { redirect_to @newsletteruser, notice: 'Newsletteruser was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsletteruser }
      else
        format.html { render :edit }
        format.json { render json: @newsletteruser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletterusers/1
  # DELETE /newsletterusers/1.json
  def destroy
    @newsletteruser.destroy
    respond_to do |format|
      format.html { redirect_to newsletterusers_url, notice: 'Newsletteruser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletteruser
      @newsletteruser = Newsletteruser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletteruser_params
      params.require(:newsletteruser).permit(:name, :email, :newsletteruser_id, :id)
    end
end
