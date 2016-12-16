class CreateAdditionalUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :additional_users do |t|

      t.timestamps
    end
  end
end
