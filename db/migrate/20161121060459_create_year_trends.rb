class CreateYearTrends < ActiveRecord::Migration[5.0]
  def change
    create_table :year_trends do |t|
      t.string :institution_code
      t.string :processing_month
      t.integer :processing_year
      t.integer :Jan_Stats
      t.integer :Feb_Stats
      t.integer :Mar_Stats
      t.integer :Apr_Stats
      t.integer :May_Stats
      t.integer :Jun_Stats
      t.integer :Jul_Stats
      t.integer :Aug_Stats
      t.integer :Sept_Stats
      t.integer :Oct_Stats
      t.integer :Nov_Stats
      t.integer :Dec_Stats

      t.timestamps
    end
  end
end
