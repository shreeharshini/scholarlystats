class AddAccountIdToAccountInfo < ActiveRecord::Migration[5.0]
  def change
    add_column :account_infos, :account_id, :integer
  end
end
