class AdresKontrController < ApplicationController
  before_action :set_adres_kontr, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 


  # GET /adres_kontr
  # GET /adres_kontr.json
  def index
    @adres_kontr = AdresKontr.all
  end

  # GET /adres_kontr/1
  # GET /adres_kontr/1.json
  def show
  end

  # GET /adres_kontr/new
  def new
    @adres_kontr = AdresKontr.new
  end

  # GET /adres_kontr/1/edit
  def edit
  end

  # POST /adres_kontr
  # POST /adres_kontr.json
  def create
    @adres_kontr = AdresKontr.new(adres_kontr_params)

    respond_to do |format|
      if @adres_kontr.save
        format.html { redirect_to @adres_kontr, notice: 'Adres kontr was successfully created.' }
        format.json { render :show, status: :created, location: @adres_kontr }
      else
        format.html { render :new }
        format.json { render json: @adres_kontr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adres_kontr/1
  # PATCH/PUT /adres_kontr/1.json
  def update
    respond_to do |format|
      if @adres_kontr.update(adres_kontr_params)
        format.html { redirect_to @adres_kontr, notice: 'Adres kontr was successfully updated.' }
        format.json { render :show, status: :ok, location: @adres_kontr }
      else
        format.html { render :edit }
        format.json { render json: @adres_kontr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adres_kontr/1
  # DELETE /adres_kontr/1.json
  def destroy
    @adres_kontr.destroy
    respond_to do |format|
      format.html { redirect_to adres_kontr_index_url, notice: 'Adres kontr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def authenticate_user!
    if !user_signed_in? then
      redirect_to '/'
    end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adres_kontr
      @adres_kontr = AdresKontr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adres_kontr_params
      params.require(:adres_kontr).permit(:kontrahenci_id, :typ_adresu_id, :kraj, :kod_pocztowy, :miasto, :skrytka, :ulica, :nr_budynku, :nr_lokalu)
    end
end
