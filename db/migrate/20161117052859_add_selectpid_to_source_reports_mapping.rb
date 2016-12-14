class AddSelectpidToSourceReportsMapping < ActiveRecord::Migration[5.0]
  def change
    add_column :source_reports_mappings, :selectpid, :string
  end
end
