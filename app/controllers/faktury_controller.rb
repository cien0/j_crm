class FakturyController < ApplicationController
  before_action :set_faktury, only: [:show, :edit, :update, :destroy]

  # GET /faktury
  # GET /faktury.json
  def index
    @faktury = Faktury.all
  end

  # GET /faktury/1
  # GET /faktury/1.json
  def show
  end

  # GET /faktury/new
  def new
    @faktury = Faktury.new
  end

  # GET /faktury/1/edit
  def edit
  end

  # POST /faktury
  # POST /faktury.json
  def create
    @faktury = Faktury.new(faktury_params)

    respond_to do |format|
      if @faktury.save
        format.html { redirect_to @faktury, notice: 'Faktury was successfully created.' }
        format.json { render :show, status: :created, location: @faktury }
      else
        format.html { render :new }
        format.json { render json: @faktury.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faktury/1
  # PATCH/PUT /faktury/1.json
  def update
    respond_to do |format|
      if @faktury.update(faktury_params)
        format.html { redirect_to @faktury, notice: 'Faktury was successfully updated.' }
        format.json { render :show, status: :ok, location: @faktury }
      else
        format.html { render :edit }
        format.json { render json: @faktury.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faktury/1
  # DELETE /faktury/1.json
  def destroy
    @faktury.destroy
    respond_to do |format|
      format.html { redirect_to faktury_index_url, notice: 'Faktury was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faktury
      @faktury = Faktury.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faktury_params
      params.require(:faktury).permit(:Id_kontrahenci, :Nr_faktury, :Kwota, :VAT)
    end
end
