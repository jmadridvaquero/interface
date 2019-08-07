class AddPositionToReviews < ActiveRecord::Migration[5.2]
  def change
  	add_column :reviews, :position, :string
  	add_column :reviews, :company, :string
  end
end
