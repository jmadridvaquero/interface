class AddForeignKeyToReviews < ActiveRecord::Migration[5.2]
  def change
  	add_reference :reviews, :service, index: true, foreign_key: true
  end
end
