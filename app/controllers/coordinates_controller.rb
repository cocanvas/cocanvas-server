class CoordinatesController < ApplicationController
  before_action :set_coordinate, only: [:show, :edit, :update, :destroy]
  # GET /coordinates
  # GET /coordinates.json
  def index
    @coords_num = Coordinate.count
    if @coords_num >= 4800
      @latest_coords = Coordinate.order('created_at DESC').limit(10000).reverse
    else
      @latest_coords = Coordinate.all
    end
    # coordinates = Coordinate.all
    # oldestCoord = Coordinate.first
    # oldestCoord.destroy
    # if @coords_num > 9000
    #   oldestCoords = Coordinate.order('created_at ASC').limit(100)
    #   oldestCoords.destroy
    # end
  end

  # GET /coordinates/1
  # GET /coordinates/1.json
  def show
  end

  # GET /coordinates/new
  def new
    @coordinate = Coordinate.new
  end

  # GET /coordinates/1/edit
  def edit
  end

  # POST /coordinates
  # POST /coordinates.json
  def create
    @coordinate = Coordinate.new(coordinate_params)
    respond_to do |format|
      if @coordinate.save
        format.html do
          redirect_to @coordinate
          # auto previous code: { redirect_to @coordinate, notice: 'Coordinate was successfully created.' }
        end
        format.json { render json: @coordinate.to_json }
        # auto previous code: format.json { render :show, status: :created, location: @coordinate }
        # Kat's previous code: render :json => @coordinate
      else
        format.html { render :new }
        format.json { render json: @coordinate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinates/1
  # PATCH/PUT /coordinates/1.json
  def update
    respond_to do |format|
      if @coordinate.update(coordinate_params)
        format.html { redirect_to @coordinate, notice: 'Coordinate was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinate }
      else
        format.html { render :edit }
        format.json { render json: @coordinate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinates/1
  # DELETE /coordinates/1.json
  def destroy
    @coordinate.destroy
    respond_to do |format|
      format.html { redirect_to coordinates_url, notice: 'Coordinate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_coordinate
    @coordinate = Coordinate.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def coordinate_params
    params.require(:coordinate).permit(:colour, :x, :y, :user_id)
  end
end
