class KierownikController < ApplicationController
  before_action :set_kierownik, only: [:show, :edit, :update, :destroy]

  # GET /kierownik
  # GET /kierownik.json
  def index
    @kierownik = Kierownik.all
  end

  # GET /kierownik/1
  # GET /kierownik/1.json
  def show
  end

  # GET /kierownik/new
  def new
    @kierownik = Kierownik.new
  end

  # GET /kierownik/1/edit
  def edit
  end

  # POST /kierownik
  # POST /kierownik.json
  def create
    @kierownik = Kierownik.new(kierownik_params)

    respond_to do |format|
      if @kierownik.save
        format.html { redirect_to @kierownik, notice: 'Kierownik was successfully created.' }
        format.json { render :show, status: :created, location: @kierownik }
      else
        format.html { render :new }
        format.json { render json: @kierownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kierownik/1
  # PATCH/PUT /kierownik/1.json
  def update
    respond_to do |format|
      if @kierownik.update(kierownik_params)
        format.html { redirect_to @kierownik, notice: 'Kierownik was successfully updated.' }
        format.json { render :show, status: :ok, location: @kierownik }
      else
        format.html { render :edit }
        format.json { render json: @kierownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kierownik/1
  # DELETE /kierownik/1.json
  def destroy
    @kierownik.destroy
    respond_to do |format|
      format.html { redirect_to kierownik_index_url, notice: 'Kierownik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kierownik
      @kierownik = Kierownik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kierownik_params
      params.require(:kierownik).permit(:Imie, :Nazwisko, :Login, :Aktywny)
    end
end
