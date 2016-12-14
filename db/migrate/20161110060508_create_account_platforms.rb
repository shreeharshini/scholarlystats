class CreateAccountPlatforms < ActiveRecord::Migration[5.0]
  def change
    create_table :account_platforms do |t|
      t.integer :account_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
