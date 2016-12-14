class CreateSourceReportsMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :source_reports_mappings do |t|
      t.integer :report_id
      t.integer :platform_id
      t.integer :month
      t.integer :year
      t.integer :account_id

      t.timestamps
    end
  end
end
