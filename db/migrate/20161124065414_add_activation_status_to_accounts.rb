class AddActivationStatusToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :activation_status, :string
  end
end
