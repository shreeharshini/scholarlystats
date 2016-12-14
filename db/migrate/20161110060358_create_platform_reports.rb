class CreatePlatformReports < ActiveRecord::Migration[5.0]
  def change
    create_table :platform_reports do |t|
      t.integer :platform_id
      t.integer :report_id

      t.timestamps
    end
  end
end
