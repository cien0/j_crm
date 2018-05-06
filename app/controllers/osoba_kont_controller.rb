class OsobaKontController < ApplicationController
  before_action :set_osoba_kont, only: [:show, :edit, :update, :destroy]

  # GET /osoba_kont
  # GET /osoba_kont.json
  def index
    @osoba_kont = OsobaKont.all
  end

  # GET /osoba_kont/1
  # GET /osoba_kont/1.json
  def show
  end

  # GET /osoba_kont/new
  def new
    @osoba_kont = OsobaKont.new
  end

  # GET /osoba_kont/1/edit
  def edit
  end

  # POST /osoba_kont
  # POST /osoba_kont.json
  def create
    @osoba_kont = OsobaKont.new(osoba_kont_params)

    respond_to do |format|
      if @osoba_kont.save
        format.html { redirect_to @osoba_kont, notice: 'Osoba kont was successfully created.' }
        format.json { render :show, status: :created, location: @osoba_kont }
      else
        format.html { render :new }
        format.json { render json: @osoba_kont.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osoba_kont/1
  # PATCH/PUT /osoba_kont/1.json
  def update
    respond_to do |format|
      if @osoba_kont.update(osoba_kont_params)
        format.html { redirect_to @osoba_kont, notice: 'Osoba kont was successfully updated.' }
        format.json { render :show, status: :ok, location: @osoba_kont }
      else
        format.html { render :edit }
        format.json { render json: @osoba_kont.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osoba_kont/1
  # DELETE /osoba_kont/1.json
  def destroy
    @osoba_kont.destroy
    respond_to do |format|
      format.html { redirect_to osoba_kont_index_url, notice: 'Osoba kont was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osoba_kont
      @osoba_kont = OsobaKont.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def osoba_kont_params
      params.require(:osoba_kont).permit(:Imie, :Imiona, :Nazwisko, :Data_urodz)
    end
end
