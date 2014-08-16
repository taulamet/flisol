class EdicionsController < ApplicationController
  before_action :set_edicion, only: [:show, :edit, :update, :destroy]
  before_action :set_edicion_by_nombre, only: [:ver]

  #  before_action :authenticate_usuario!, except: [:ver]
  
  def ver    
  end

  # GET /edicions
  # GET /edicions.json
  def index
    @edicions = Edicion.all
  end

  # GET /edicions/1
  # GET /edicions/1.json
  def show
  end

  # GET /edicions/new
  def new
    @edicion = Edicion.new
  end

  # GET /edicions/1/edit
  def edit
  end

  # POST /edicions
  # POST /edicions.json
  def create
    @edicion = Edicion.new(edicion_params)

    respond_to do |format|
      if @edicion.save
        format.html { redirect_to @edicion, notice: 'Edicion was successfully created.' }
        format.json { render :show, status: :created, location: @edicion }
      else
        format.html { render :new }
        format.json { render json: @edicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edicions/1
  # PATCH/PUT /edicions/1.json
  def update
    respond_to do |format|
      if @edicion.update(edicion_params)
        format.html { redirect_to @edicion, notice: 'Edicion was successfully updated.' }
        format.json { render :show, status: :ok, location: @edicion }
      else
        format.html { render :edit }
        format.json { render json: @edicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edicions/1
  # DELETE /edicions/1.json
  def destroy
    @edicion.destroy
    respond_to do |format|
      format.html { redirect_to edicions_url, notice: 'Edicion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edicion
      @edicion = Edicion.find(params[:id])
    end

    def set_edicion_by_nombre
      @edicion = Edicion.find_by_nombre(params[:nombre])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edicion_params
      params.require(:edicion).permit(:nombre, :actual)
    end
end
