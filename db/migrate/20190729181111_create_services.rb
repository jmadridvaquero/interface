class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :photo

      t.timestamps
      create_table :service_translations, force: true do |t|
        t.references :service, index: true
        t.string :locale

        # Attributes

        ## General
        t.string :name
        t.text :description
        t.string :summary
      end
    end
    # reversible do |dir|
    #   dir.up do
    #     Service.create_translation_table! :name => :string, :summary => :text, :description => :text
    #   end

    #   dir.down do
    #     Service.drop_translation_table!
    #   end
    # end
  end
end
