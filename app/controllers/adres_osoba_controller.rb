class AdresOsobaController < ApplicationController
  before_action :set_adres_osoba, only: [:show, :edit, :update, :destroy]

  # GET /adres_osoba
  # GET /adres_osoba.json
  def index
    @adres_osoba = AdresOsoba.all
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adres_osoba
      @adres_osoba = AdresOsoba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adres_osoba_params
      params.require(:adres_osoba).permit(:Id_Osoba_kont, :Typ, :Kraj, :Kod_pocztowy, :Miasto, :Skrytka, :Ulica, :Nr_budynku, :Nr_lokalu, :Opis)
    end
end
