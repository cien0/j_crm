class ObrotyController < ApplicationController
  before_action :set_obroty, only: [:show, :edit, :update, :destroy]

  # GET /obroty
  # GET /obroty.json
  def index
    @obroty = Obroty.all
  end

  # GET /obroty/1
  # GET /obroty/1.json
  def show
  end

  # GET /obroty/new
  def new
    @obroty = Obroty.new
  end

  # GET /obroty/1/edit
  def edit
  end

  # POST /obroty
  # POST /obroty.json
  def create
    @obroty = Obroty.new(obroty_params)

    respond_to do |format|
      if @obroty.save
        format.html { redirect_to @obroty, notice: 'Obroty was successfully created.' }
        format.json { render :show, status: :created, location: @obroty }
      else
        format.html { render :new }
        format.json { render json: @obroty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obroty/1
  # PATCH/PUT /obroty/1.json
  def update
    respond_to do |format|
      if @obroty.update(obroty_params)
        format.html { redirect_to @obroty, notice: 'Obroty was successfully updated.' }
        format.json { render :show, status: :ok, location: @obroty }
      else
        format.html { render :edit }
        format.json { render json: @obroty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obroty/1
  # DELETE /obroty/1.json
  def destroy
    @obroty.destroy
    respond_to do |format|
      format.html { redirect_to obroty_index_url, notice: 'Obroty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obroty
      @obroty = Obroty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obroty_params
      params.require(:obroty).permit(:Id_kontrahenci, :Rok, :Miesiac, :Kwota)
    end
end
