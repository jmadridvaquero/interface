class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :client
      t.references :service, index: true
      

      t.timestamps
      create_table :review_translations, force: true do |t|
        t.references :review, index: true
        t.string :locale

        # Attributes

        ## General
        t.string :position
        t.text :content
      end
    end
    # reversible do |dir|
    #   dir.up do
    #     Review.create_translation_table! :position => :string, :content => :text
    #   end

    #   dir.down do
    #     Review.drop_translation_table!
    #   end
    # end
  end
end
