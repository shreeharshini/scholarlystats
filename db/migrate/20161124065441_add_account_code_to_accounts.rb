class AddAccountCodeToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :account_code, :string
  end
end
