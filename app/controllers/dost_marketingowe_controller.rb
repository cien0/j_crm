class DostMarketingoweController < ApplicationController
  before_action :set_dost_marketingowe, only: [:show, :edit, :update, :destroy]

  # GET /dost_marketingowe
  # GET /dost_marketingowe.json
  def index
    @dost_marketingowe = DostMarketingowe.all
  end

  # GET /dost_marketingowe/1
  # GET /dost_marketingowe/1.json
  def show
  end

  # GET /dost_marketingowe/new
  def new
    @dost_marketingowe = DostMarketingowe.new
  end

  # GET /dost_marketingowe/1/edit
  def edit
  end

  # POST /dost_marketingowe
  # POST /dost_marketingowe.json
  def create
    @dost_marketingowe = DostMarketingowe.new(dost_marketingowe_params)

    respond_to do |format|
      if @dost_marketingowe.save
        format.html { redirect_to @dost_marketingowe, notice: 'Dost marketingowe was successfully created.' }
        format.json { render :show, status: :created, location: @dost_marketingowe }
      else
        format.html { render :new }
        format.json { render json: @dost_marketingowe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dost_marketingowe/1
  # PATCH/PUT /dost_marketingowe/1.json
  def update
    respond_to do |format|
      if @dost_marketingowe.update(dost_marketingowe_params)
        format.html { redirect_to @dost_marketingowe, notice: 'Dost marketingowe was successfully updated.' }
        format.json { render :show, status: :ok, location: @dost_marketingowe }
      else
        format.html { render :edit }
        format.json { render json: @dost_marketingowe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dost_marketingowe/1
  # DELETE /dost_marketingowe/1.json
  def destroy
    @dost_marketingowe.destroy
    respond_to do |format|
      format.html { redirect_to dost_marketingowe_index_url, notice: 'Dost marketingowe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dost_marketingowe
      @dost_marketingowe = DostMarketingowe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dost_marketingowe_params
      params.require(:dost_marketingowe).permit(:Id_Kont_klient, :Typ, :Ile)
    end
end
