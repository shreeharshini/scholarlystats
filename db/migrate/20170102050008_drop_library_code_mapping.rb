class DropLibraryCodeMapping < ActiveRecord::Migration[5.0]
  def change
  	drop_table :Library_code_mapping
  end
end
