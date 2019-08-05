class ServicesController < ApplicationController
before_action :set_service, only: [:index, :show]

  def index
  	@service = Service.all
  end

  def show
  	set_service
  end

	private

  def set_service
    @service = Service.find(params[:id])
  end
end
