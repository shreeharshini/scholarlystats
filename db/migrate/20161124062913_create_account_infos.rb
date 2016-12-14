class CreateAccountInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :account_infos do |t|
      t.string :account_code
      t.string :account_name
      t.string :account_type
      t.string :no_of_platforms
      t.string :admin_first_name
      t.string :admin_last_name
      t.string :admin_email
      t.integer :admin_phone
      t.date :contract_start_date
      t.date :contract_expiry_date
      t.string :activation_code
      t.string :activation_status
      t.string :created_by
      t.date :created_date
      t.string :updated_by
      t.date :updated_date
      t.string :admin_first_name2
      t.string :admin_last_name2
      t.string :admin_email2
      t.integer :admin_phone2
      t.string :address_line_1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode
      t.string :bill_address_1
      t.string :bill_address_2
      t.string :bill_city
      t.string :bill_state
      t.string :bill_country
      t.integer :bill_pin_code
      t.integer :is_same

      t.timestamps
    end
  end
end
