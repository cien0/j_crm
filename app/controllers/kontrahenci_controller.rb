class KontrahenciController < ApplicationController
  before_action :set_kontrahenci, only: [:show, :edit, :update, :destroy, :lista]

  # GET /kontrahenci
  # GET /kontrahenci.json
  def index
  @kontrahenci = Kontrahenci.all.paginate(:page => params[:page])
  end

  # GET /kontrahenci/1
  # GET /kontrahenci/1.json
  def show
  end

  # GET /kontrahenci/1
  # GET /kontrahenci/1.json
  def lista
    @kontrahenci = Kontrahenci.find(params[:id])
    @faktury = Faktury.where(:kontrahenci_id => @kontrahenci.id)
    if @faktury.nil? then
      @faktury = []
    end
    @obroty = Obroty.where(:kontrahenci_id => @kontrahenci.id).last(6)
    if @obroty.nil? then
      @obroty = []
    end
  end


  # GET /kontrahenci/new
  def new
   @kontrahenci = Kontrahenci.new
  end

  # GET /kontrahenci/1/edit
  def edit
  end

  # POST /kontrahenci
  # POST /kontrahenci.json
  def create
    @kontrahenci = Kontrahenci.new(kontrahenci_params)
    @opiekun =  Opiekun.select("id,login")
    
    respond_to do |format|
      if @kontrahenci.save
        format.html { redirect_to @kontrahenci, notice: 'Kontrahenci został stworzony.' }
        format.json { render :show, status: :created, location: @kontrahenci }
      else
        format.html { render :new }
        format.json { render json: @kontrahenci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kontrahenci/1
  # PATCH/PUT /kontrahenci/1.json
  def update
    respond_to do |format|
      if @kontrahenci.update(kontrahenci_params)
        format.html { redirect_to @kontrahenci, notice: 'Kontrahenci został zaktualizowany.' }
        format.json { render :show, status: :ok, location: @kontrahenci }
      else
        format.html { render :edit }
        format.json { render json: @kontrahenci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kontrahenci/1
  # DELETE /kontrahenci/1.json
  def destroy
    @kontrahenci.destroy
    respond_to do |format|
      format.html { redirect_to kontrahenci_index_url, notice: 'Kontrahenci został usunięty.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kontrahenci
      #@kontrahenci = Kontrahenci.find(params[:id])
      @kontrahenci = Kontrahenci.joins(:opiekun).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kontrahenci_params
      params.require(:kontrahenci).permit(:system_id, :status_text_id, :nazwa, :nip, :www, :numer_tel, :numer_fak, :email, :opiekun_id)
    end
end
