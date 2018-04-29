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
    @coords = { 'c' => [] }
    @latest_coords.each do |v|

      a = []
      a << v['colour']
      a << v['x']
      a << v['y']
      @coords['c'] << a

    end
    render json: @coords
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
