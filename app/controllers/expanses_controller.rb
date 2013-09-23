class ExpansesController < ApplicationController
  before_action :set_expanse, only: [:show, :edit, :update, :destroy]

  # GET /expanses
  # GET /expanses.json
  def index
    WillPaginate.per_page = 3
    @expanses = Expanse.paginate(:page => params[:page],:order => 'dated DESC')
  end

  # GET /expanses/1
  # GET /expanses/1.json
  def show

  end

  # GET /expanses/new
  def new
    @expanse = Expanse.new
  end

  # GET /expanses/1/edit
  def edit
  end

  # POST /expanses
  # POST /expanses.json
  def create
    @expanse = Expanse.new(expanse_params)

    respond_to do |format|
      if @expanse.save
        format.html { redirect_to expanses_url, notice: 'Expanse was successfully created.' }
        format.json { render action: 'show', status: :created, location: @expanse }
      else
        format.html { render action: 'new' }
        format.json { render json: @expanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expanses/1
  # PATCH/PUT /expanses/1.json
  def update
    respond_to do |format|
      if @expanse.update(expanse_params)
        format.html { redirect_to @expanse, notice: 'Expanse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @expanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expanses/1
  # DELETE /expanses/1.json
  def destroy
    @expanse.destroy
    respond_to do |format|
      format.html { redirect_to expanses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expanse
      @expanse = Expanse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expanse_params
      params.require(:expanse).permit(:detail, :amount, :dated)
    end
end
