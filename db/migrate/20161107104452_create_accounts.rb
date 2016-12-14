class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :month
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
