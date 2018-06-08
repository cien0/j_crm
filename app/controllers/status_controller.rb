class StatusController < ApplicationController
  before_action :set_status, only: [:show, :update, :destroy]

  # GET /status
  # GET /status.json
  def index
    @status = Kontrahenci.all.paginate(:page => params[:page])
  end

  # GET /status/1
  # GET /status/1.json
  def show
  end

  # GET /status/new
  def new
    @status = Status.new
  end

  # GET /status/1/edit
def edit
  @kontrahenci = Kontrahenci.all
  @obroty = Obroty.all
  @kontrahenci.each do |kontrahent|
    ktory=kontrahent.id
    m1=1.month.ago.month
    y1=1.month.ago.year
    m2=2.month.ago.month
    y2=2.month.ago.year
    m3=3.month.ago.month
    y3=3.month.ago.year
    
    @saldo1= Obroty.where({ kontrahenci_id:  ktory, rok: y1, miesiac: m1 }).take
    @saldo2= Obroty.where({ kontrahenci_id:  ktory, rok: y2, miesiac: m2 }).take
    @saldo3= Obroty.where({ kontrahenci_id:  ktory, rok: y3, miesiac: m3 }).take
      if !@saldo1.nil?  then
        logger.debug  "Saldo: #{@saldo1['kwota'].to_f}" 
        if @saldo1['kwota']==0 then
          Kontrahenci.transaction do
            k = Kontrahenci.lock.find(kontrahent.id)
            k.status_text_id = 3
            k.save!
          end
        end
        if @saldo1.nil?  then
        Kontrahenci.transaction do
            k = Kontrahenci.lock.find(kontrahent.id)
            k.status_text_id = 3
            k.save!
          end
        end
        if !@saldo1.nil? && !@saldo2.nil? && !@saldo2.nil?  then
        @suma = @saldo1['kwota'].to_f + @saldo2['kwota'].to_f + @saldo3['kwota'].to_f
        logger.debug  "Saldo suma: #{@suma}" 
        if @suma==0 then
          Kontrahenci.transaction do
            k = Kontrahenci.lock.find(kontrahent.id)
            k.status_text_id = 4
            k.save!
          end
        end
        end
        if @saldo1.nil?
          @suma1=0
        else 
          @suma1=@saldo1['kwota'].to_f
        end
        if @saldo2.nil?
          @suma2=0
        else
          @suma2 = @saldo2['kwota'].to_f
        end
        if @saldo2.nil?
          @suma3=0
        else
          @suma3= @saldo3['kwota'].to_f
        end
        @suma= @suma1 + @suma2 + @suma3
        if @suma==0  
        Kontrahenci.transaction do
            k = Kontrahenci.lock.find(kontrahent.id)
            k.status_text_id = 4
            k.save!
          end
        end
      end
    end
  
end

  # POST /status
  # POST /status.json
  def create
    @status = Status.new(status_params)

    respond_to do |format|
      if @status.save
        format.html { redirect_to @status, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @status }
      else
        format.html { render :new }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status/1
  # PATCH/PUT /status/1.json
  def update
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @status }
      else
        format.html { render :edit }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status/1
  # DELETE /status/1.json
  def destroy
    @status.destroy
    respond_to do |format|
      format.html { redirect_to status_index_url, notice: 'Status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:status).permit(:kontrahenci_id, :status_text_id)
    end
end
