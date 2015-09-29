class RoutesController < ApplicationController
  before_action :authorize!

  def show

  end

  def new
    @route = Route.new
  end

  def create

  end

  private

  def authorize!
    redirect_to root_path unless current_user
  end
end
