class AddNumberOfPlatformsToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :number_of_platforms, :integer
  end
end
