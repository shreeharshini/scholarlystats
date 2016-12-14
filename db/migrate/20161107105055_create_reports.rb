class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.string :description
      t.string :format
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
