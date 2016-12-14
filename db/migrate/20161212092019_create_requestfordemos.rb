class CreateRequestfordemos < ActiveRecord::Migration[5.0]
  def change
    create_table :requestfordemos do |t|
      t.string :username
      t.string :email
      t.string :library
      t.integer :number
      t.string :message

      t.timestamps
    end
  end
end
