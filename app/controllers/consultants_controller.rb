class ConsultantsController < ApplicationController
  before_action :set_consultant, only: [:index, :show]

  def index
  	@consultant = Consultant.all
  end

  def show
  	set_consutant
  end

	private

  def set_consultant
    @consultant = Consultant.find(params[:id])
  end
end
