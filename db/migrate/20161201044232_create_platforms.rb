class CreatePlatforms < ActiveRecord::Migration[5.0]
  def change
    create_table :platforms do |t|
      t.string :abbrev
      t.string :name
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
