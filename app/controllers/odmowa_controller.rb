class OdmowaController < ApplicationController
  before_action :set_odmowa, only: [:show, :edit, :update, :destroy]

  # GET /odmowa
  # GET /odmowa.json
  def index
    @odmowa = Odmowa.all.paginate(:page => params[:page])
  end

  # GET /odmowa/1
  # GET /odmowa/1.json
  def show
  end

  # GET /odmowa/new
  def new
    @odmowa = Odmowa.new
  end

  # GET /odmowa/1/edit
  def edit
  end

  # POST /odmowa
  # POST /odmowa.json
  def create
    @odmowa = Odmowa.new(odmowa_params)
    @odmowa_typ =  OdmowaTyp.select("id,typ")
    respond_to do |format|
      if @odmowa.save
        format.html { redirect_to @odmowa, notice: 'Odmowa was successfully created.' }
        format.json { render :show, status: :created, location: @odmowa }
      else
        format.html { render :new }
        format.json { render json: @odmowa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odmowa/1
  # PATCH/PUT /odmowa/1.json
  def update
    respond_to do |format|
      if @odmowa.update(odmowa_params)
        format.html { redirect_to @odmowa, notice: 'Odmowa was successfully updated.' }
        format.json { render :show, status: :ok, location: @odmowa }
      else
        format.html { render :edit }
        format.json { render json: @odmowa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odmowa/1
  # DELETE /odmowa/1.json
  def destroy
    @odmowa.destroy
    respond_to do |format|
      format.html { redirect_to odmowa_index_url, notice: 'Odmowa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def authenticate_admin!
    # check if current user is admin
    if current_user.id != 1 then
    #logger.debug {user_signed_in?}
      # if current_user is not admin redirect to some route
      redirect_to '/'
    end
    # if current_user is admin he will proceed to edit action
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odmowa
      @odmowa = Odmowa.find(params[:id])
      #@odmowa = Odmowa.joins(:odmowa_typ).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def odmowa_params
      params.require(:odmowa).permit(:kont_klient_id, :odmowa_typ, :data)
    end
end
