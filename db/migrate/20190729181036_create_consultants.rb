class CreateConsultants < ActiveRecord::Migration[5.2]
  def change
    create_table :consultants do |t|
      t.string :name
      t.text :bio
      t.string :photo

      t.timestamps
    end
  end
end
