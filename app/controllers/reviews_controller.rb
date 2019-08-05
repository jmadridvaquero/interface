class ReviewsController < ApplicationController
	before_action :set_review, only: [:index, :show]

  def index
  	@review = Review.all
  end

  def show
  	set_review
  end

	private

  def set_review
    @review = Review.find(params[:id])
  end
end


