class OdmowaMarkController < ApplicationController
  before_action :set_odmowa_mark, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 

  # GET /odmowa_mark
  # GET /odmowa_mark.json
  def index
    @odmowa_mark = OdmowaMark.all.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /odmowa_mark/1
  # GET /odmowa_mark/1.json
  def show
  end

  # GET /odmowa_mark/new
  def new
    @odmowa_mark = OdmowaMark.new
  end

  # GET /odmowa_mark/1/edit
  def edit
  end

  # POST /odmowa_mark
  # POST /odmowa_mark.json
  def create
    @odmowa_mark = OdmowaMark.new(odmowa_mark_params)

    respond_to do |format|
      if @odmowa_mark.save
        format.html { redirect_to @odmowa_mark, notice: 'Odmowa marketingowa została utworzona.' }
        format.json { render :show, status: :created, location: @odmowa_mark }
      else
        format.html { render :new }
        format.json { render json: @odmowa_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odmowa_mark/1
  # PATCH/PUT /odmowa_mark/1.json
  def update
    respond_to do |format|
      if @odmowa_mark.update(odmowa_mark_params)
        format.html { redirect_to @odmowa_mark, notice: 'Odmowa marketingowa została zaktualizowana.' }
        format.json { render :show, status: :ok, location: @odmowa_mark }
      else
        format.html { render :edit }
        format.json { render json: @odmowa_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odmowa_mark/1
  # DELETE /odmowa_mark/1.json
  def destroy
    @odmowa_mark.destroy
    respond_to do |format|
      format.html { redirect_to odmowa_mark_index_url, notice: 'Odmowa marketingowa została usunieta.' }
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
    def set_odmowa_mark
      #@odmowa_mark = OdmowaMark.find(params[:id])
      @odmowa_mark = OdmowaMark.joins(:odmowa_typ).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def odmowa_mark_params
      params.require(:odmowa_mark).permit(:kontrahenci_id, :odmowa_typ_id, :data)
    end
end
