class AddContractSignOnToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :contract_sign_on, :date
  end
end
