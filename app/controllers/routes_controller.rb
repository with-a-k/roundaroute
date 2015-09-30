class RoutesController < ApplicationController
  before_action :authorize!

  def index
    @routes = Route.all
  end

  def show
    @route = Route.find_by(id: params[:id])
  end

  def new
    @route = Route.new
  end

  def create
    route = Route.new(
      name: params[:route][:name],
      origin: params[:route][:origin],
      distance: params[:route][:distance],
      user_id: current_user.id
    )
    if route.save
      redirect_to route_path(Route.last)
    end
  end

  private

  def authorize!
    redirect_to root_path unless current_user
  end
end
