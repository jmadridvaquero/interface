class AddForeignKeyToReviews < ActiveRecord::Migration[5.2]
  def change
  	add_reference :reviews, :services, index: true, foreign_key: true
  end
end
