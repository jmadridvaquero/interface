class PagesController < ApplicationController
  def home
  	@services = Service.all
  	@consultants = Consultant.all
  	@reviews = Review.all
  end
end
