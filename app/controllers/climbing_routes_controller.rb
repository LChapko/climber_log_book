class ClimbingRoutesController < ApplicationController
  before_action :set_climbing_route, only: [:show, :edit, :update, :delete]

  # GET /climbing_routes
  def index
    @climbing_routes = ClimbingRoute.scan({})
  end

  # GET /climbing_routes/1
  def show
  end

  # GET /climbing_routes/new
  def new
    @climbing_route = ClimbingRoute.new
  end

  # GET /climbing_routes/1/edit
  def edit
  end

  # POST /climbing_routes
  def create
    @climbing_route = ClimbingRoute.new(climbing_route_params.as_json)

    if @climbing_route.replace
      if request.xhr?
        render json: {success: true, location: url_for(@climbing_route)}
      else
        redirect_to climbing_route_path(@climbing_route.id)
      end
    else
      render :new
    end
  end

  # PUT /climbing_routes/1
  def update
    if @climbing_route.update(climbing_route_params)
      if request.xhr?
        render json: {success: true, location: url_for(@climbing_route)}
      else
        redirect_to climbing_route_path(@climbing_route)
      end
    else
      render :edit
    end
  end

  # DELETE /climbing_routes/1
  def delete
    ClimbingRoute.delete(@climbing_route.id)
    if request.xhr?
      render json: {success: true}
    else
      redirect_to climbing_routes_path
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_climbing_route
    @climbing_route = ClimbingRoute.find(params[:id])
  end

  def climbing_route_params
    params.require(:climbing_route).permit(:id, :route_name, :beta, :description).reject{|_, v| v.blank?}
  end
end
