class ZlecenieController < ApplicationController
  before_action :set_zlecenie, only: [:show, :edit, :update, :destroy]
 
  # GET /zlecenie
  # GET /zlecenie.json
  def index
    logger.debug "contr index"
   @zlecenie =  Zlecenie.all.paginate(:page => params[:page])
  end

  # GET /zlecenie/1
  # GET /zlecenie/1.json
  def show
  end
  
  def lista
    logger.debug "kontroler zlecenia"
    @zlecenie =  Zlecenie.all.paginate(:page => params[:page])
  end
  
  # GET /zlecenie/new
  def new
     logger.debug "kontr new"
    @zlecenie = Zlecenie.new
  end

  # GET /zlecenie/1/edit
  def edit
  end

  # POST /zlecenie
  # POST /zlecenie.json
  def create
    logger.debug "contr create"
    @zlecenie = Zlecenie.new(zlecenie_params)

    respond_to do |format|
      if @zlecenie.save
        format.html { redirect_to @zlecenie, notice: 'Zlecenie was successfully created.' }
        format.json { render :show, status: :created, location: @zlecenie }
      else
        format.html { render :new }
        format.json { render json: @zlecenie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zlecenie/1
  # PATCH/PUT /zlecenie/1.json
  def update
    respond_to do |format|
      if @zlecenie.update(zlecenie_params)
        format.html { redirect_to @zlecenie, notice: 'Zlecenie was successfully updated.' }
        format.json { render :show, status: :ok, location: @zlecenie }
      else
        format.html { render :edit }
        format.json { render json: @zlecenie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zlecenie/1
  # DELETE /zlecenie/1.json
  def destroy
    @zlecenie.destroy
    respond_to do |format|
      format.html { redirect_to zlecenie_index_url, notice: 'Zlecenie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zlecenie
      logger.debug "contr set_zlecenia" 
      @zlecenie = Zlecenie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zlecenie_params
      logger.debug "cont zlec param"
       params.require(:zlecenie).permit(:kierownik_id, :opiekun_id, :datata_utworzenia, :data_zlecenia, :opis, :status, :raport, :info)
    end
   
end
