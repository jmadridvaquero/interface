class AddServiceToReviews < ActiveRecord::Migration[5.2]
  def change
  	add_column :reviews, :service, :string
  end
end
