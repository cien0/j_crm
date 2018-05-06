class NumerOsobaController < ApplicationController
  before_action :set_numer_osoba, only: [:show, :edit, :update, :destroy]

  # GET /numer_osoba
  # GET /numer_osoba.json
  def index
    @numer_osoba = NumerOsoba.all
  end

  # GET /numer_osoba/1
  # GET /numer_osoba/1.json
  def show
  end

  # GET /numer_osoba/new
  def new
    @numer_osoba = NumerOsoba.new
  end

  # GET /numer_osoba/1/edit
  def edit
  end

  # POST /numer_osoba
  # POST /numer_osoba.json
  def create
    @numer_osoba = NumerOsoba.new(numer_osoba_params)

    respond_to do |format|
      if @numer_osoba.save
        format.html { redirect_to @numer_osoba, notice: 'Numer osoba was successfully created.' }
        format.json { render :show, status: :created, location: @numer_osoba }
      else
        format.html { render :new }
        format.json { render json: @numer_osoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /numer_osoba/1
  # PATCH/PUT /numer_osoba/1.json
  def update
    respond_to do |format|
      if @numer_osoba.update(numer_osoba_params)
        format.html { redirect_to @numer_osoba, notice: 'Numer osoba was successfully updated.' }
        format.json { render :show, status: :ok, location: @numer_osoba }
      else
        format.html { render :edit }
        format.json { render json: @numer_osoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numer_osoba/1
  # DELETE /numer_osoba/1.json
  def destroy
    @numer_osoba.destroy
    respond_to do |format|
      format.html { redirect_to numer_osoba_index_url, notice: 'Numer osoba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_numer_osoba
      @numer_osoba = NumerOsoba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def numer_osoba_params
      params.require(:numer_osoba).permit(:Id_Osoba_kont, :Kontakt, :Typ, :Opis)
    end
end
