class CreateConsultants < ActiveRecord::Migration[5.2]
  def change
    create_table :consultants do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end

    create_table :consultant_translations, force: true do |t|
      t.references :consultant, index: true
      t.string :locale

      # Attributes

      ## General
      t.string :expertise
      t.text :bio
    end
    # reversible do |dir|
    #   dir.up do
    #     Consultant.create_translation_table! :expertise => :string, :bio => :text
    #   end

    #   dir.down do
    #     Consultant.drop_translation_table!
    #   end
    # end
  end
end
