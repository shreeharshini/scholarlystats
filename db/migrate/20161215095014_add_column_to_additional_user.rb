class AddColumnToAdditionalUser < ActiveRecord::Migration[5.0]
  def change
    add_column :additional_users, :first_name, :string
    add_column :additional_users, :last_name, :string
    add_column :additional_users, :email, :string
    add_column :additional_users, :password, :string
    add_column :additional_users, :role, :string
  end
end
