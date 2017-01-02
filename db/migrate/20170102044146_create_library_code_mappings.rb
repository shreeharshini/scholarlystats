class CreateLibraryCodeMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :library_code_mappings do |t|
      t.integer :New_Code
      t.string :Library_Name
      t.string :Old_Code

      t.timestamps
    end
  end
end
