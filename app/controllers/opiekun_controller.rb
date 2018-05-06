class OpiekunController < ApplicationController
  before_action :set_opiekun, only: [:show, :edit, :update, :destroy]

  # GET /opiekun
  # GET /opiekun.json
  def index
    @opiekun = Opiekun.all
  end

  # GET /opiekun/1
  # GET /opiekun/1.json
  def show
  end

  # GET /opiekun/new
  def new
    @opiekun = Opiekun.new
  end

  # GET /opiekun/1/edit
  def edit
  end

  # POST /opiekun
  # POST /opiekun.json
  def create
    @opiekun = Opiekun.new(opiekun_params)

    respond_to do |format|
      if @opiekun.save
        format.html { redirect_to @opiekun, notice: 'Opiekun was successfully created.' }
        format.json { render :show, status: :created, location: @opiekun }
      else
        format.html { render :new }
        format.json { render json: @opiekun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opiekun/1
  # PATCH/PUT /opiekun/1.json
  def update
    respond_to do |format|
      if @opiekun.update(opiekun_params)
        format.html { redirect_to @opiekun, notice: 'Opiekun was successfully updated.' }
        format.json { render :show, status: :ok, location: @opiekun }
      else
        format.html { render :edit }
        format.json { render json: @opiekun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opiekun/1
  # DELETE /opiekun/1.json
  def destroy
    @opiekun.destroy
    respond_to do |format|
      format.html { redirect_to opiekun_index_url, notice: 'Opiekun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opiekun
      @opiekun = Opiekun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opiekun_params
      params.require(:opiekun).permit(:Imie, :Nazwisko, :Login, :Aktywny)
    end
end
