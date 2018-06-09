class InfDodatkaKontrController < ApplicationController
  before_action :set_inf_dodatka_kontr, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 


  # GET /inf_dodatka_kontr
  # GET /inf_dodatka_kontr.json
  def index
    @inf_dodatka_kontr = InfDodatkaKontr.all
  end

  # GET /inf_dodatka_kontr/1
  # GET /inf_dodatka_kontr/1.json
  def show
  end

  # GET /inf_dodatka_kontr/new
  def new
    @inf_dodatka_kontr = InfDodatkaKontr.new
  end

  # GET /inf_dodatka_kontr/1/edit
  def edit
  end

  # POST /inf_dodatka_kontr
  # POST /inf_dodatka_kontr.json
  def create
    @inf_dodatka_kontr = InfDodatkaKontr.new(inf_dodatka_kontr_params)

    respond_to do |format|
      if @inf_dodatka_kontr.save
        format.html { redirect_to @inf_dodatka_kontr, notice: 'Inf dodatka kontr was successfully created.' }
        format.json { render :show, status: :created, location: @inf_dodatka_kontr }
      else
        format.html { render :new }
        format.json { render json: @inf_dodatka_kontr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inf_dodatka_kontr/1
  # PATCH/PUT /inf_dodatka_kontr/1.json
  def update
    respond_to do |format|
      if @inf_dodatka_kontr.update(inf_dodatka_kontr_params)
        format.html { redirect_to @inf_dodatka_kontr, notice: 'Inf dodatka kontr was successfully updated.' }
        format.json { render :show, status: :ok, location: @inf_dodatka_kontr }
      else
        format.html { render :edit }
        format.json { render json: @inf_dodatka_kontr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inf_dodatka_kontr/1
  # DELETE /inf_dodatka_kontr/1.json
  def destroy
    @inf_dodatka_kontr.destroy
    respond_to do |format|
      format.html { redirect_to inf_dodatka_kontr_index_url, notice: 'Inf dodatka kontr was successfully destroyed.' }
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
    def set_inf_dodatka_kontr
      @inf_dodatka_kontr = InfDodatkaKontr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inf_dodatka_kontr_params
      params.require(:inf_dodatka_kontr).permit(:Id_Kontrahenci, :Inf_dodatkowa)
    end
end
