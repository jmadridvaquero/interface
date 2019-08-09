class PagesController < ApplicationController
  def home
  	@services = Service.all
  	@consultants = Consultant.all
  end
end
