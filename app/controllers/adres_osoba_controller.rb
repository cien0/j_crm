class AdresOsobaController < ApplicationController
  before_action :set_adres_osoba, only: [:show, :edit, :update, :destroy, :lista]
  before_action :set_osoba_kont, only: [:lista]
  before_action :authenticate_user! 

  
  # GET /adres_osoba
  # GET /adres_osoba.json
  def index
    @adres_osoba = AdresOsoba.all
  end
  
  def lista
    @adres_osoba = AdresOsoba.where(:osoba_kont_id => params[:id])
    @kontrahent = @osoba_kont.kontrahenci_id
    if @adres_osoba.nil? then
      @adres_osoba  = []
    end
  end

  # GET /adres_osoba/1
  # GET /adres_osoba/1.json
  def show
  end

  # GET /adres_osoba/new
  def new
    @adres_osoba = AdresOsoba.new
  end

  # GET /adres_osoba/1/edit
  def edit
  end

  # POST /adres_osoba
  # POST /adres_osoba.json
  def create
    @adres_osoba = AdresOsoba.new(adres_osoba_params)

    respond_to do |format|
      if @adres_osoba.save
        format.html { redirect_to @adres_osoba, notice: 'Adres osoba was successfully created.' }
        format.json { render :show, status: :created, location: @adres_osoba }
      else
        format.html { render :new }
        format.json { render json: @adres_osoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adres_osoba/1
  # PATCH/PUT /adres_osoba/1.json
  def update
    respond_to do |format|
      if @adres_osoba.update(adres_osoba_params)
        format.html { redirect_to @adres_osoba, notice: 'Adres osoba was successfully updated.' }
        format.json { render :show, status: :ok, location: @adres_osoba }
      else
        format.html { render :edit }
        format.json { render json: @adres_osoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adres_osoba/1
  # DELETE /adres_osoba/1.json
  def destroy
    @adres_osoba.destroy
    respond_to do |format|
      format.html { redirect_to adres_osoba_index_url, notice: 'Adres osoba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def authenticate_admin!
    if current_user.id != 1 then
      redirect_to '/'
    end
end

def authenticate_user!
    if !user_signed_in? then
      redirect_to '/'
    end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adres_osoba
      @adres_osoba = AdresOsoba.find(params[:id])
    end
    def set_osoba_kont
      @osoba_kont = OsobaKont.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adres_osoba_params
      params.require(:adres_osoba).permit(:osoba_kont_id, :typ_adresu_id, :kraj, :kod_pocztowy, :miasto, :skrytka, :ulica, :nr_budynku, :nr_lokalu, :opis)
    end
end
