class KontKlientController < ApplicationController
  before_action :set_kont_klient, only: [:show, :edit, :update, :destroy]

  # GET /kont_klient
  # GET /kont_klient.json
  def index
    @kont_klient = KontKlient.all
     respond_to do |format|
      format.html
      format.csv { render text: @kont_klient.to_csv }
      format.txt { render text: @kont_klient.to_txt }
    end
  end

  # GET /kont_klient/1
  # GET /kont_klient/1.json
  def show
  end

  # GET /kont_klient/new
  def new
    @kont_klient = KontKlient.new
  end

  # GET /kont_klient/1/edit
  def edit
  end

  # POST /kont_klient
  # POST /kont_klient.json
  def create
    @kont_klient = KontKlient.new(kont_klient_params)

    respond_to do |format|
      if @kont_klient.save
        format.html { redirect_to @kont_klient, notice: 'Kont klient was successfully created.' }
        format.json { render :show, status: :created, location: @kont_klient }
      else
        format.html { render :new }
        format.json { render json: @kont_klient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kont_klient/1
  # PATCH/PUT /kont_klient/1.json
  def update
    respond_to do |format|
      if @kont_klient.update(kont_klient_params)
        format.html { redirect_to @kont_klient, notice: 'Kont klient was successfully updated.' }
        format.json { render :show, status: :ok, location: @kont_klient }
      else
        format.html { render :edit }
        format.json { render json: @kont_klient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kont_klient/1
  # DELETE /kont_klient/1.json
  def destroy
    @kont_klient.destroy
    respond_to do |format|
      format.html { redirect_to kont_klient_index_url, notice: 'Kont klient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kont_klient
      @kont_klient = KontKlient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kont_klient_params
      params.require(:kont_klient).permit(:kontrahenci_id, :opiekun_id, :data, :typ_spotkania_id, :cel_kontaktu_id, :raport, :inf_dodat)
    end
end
