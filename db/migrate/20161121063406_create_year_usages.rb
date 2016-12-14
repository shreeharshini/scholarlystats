class CreateYearUsages < ActiveRecord::Migration[5.0]
  def change
    create_table :year_usages do |t|
      t.string :Institution_Code
      t.string :Report_Type
      t.integer :YTD

      t.timestamps
    end
  end
end
