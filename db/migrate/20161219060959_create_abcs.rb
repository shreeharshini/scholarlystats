class CreateAbcs < ActiveRecord::Migration[5.0]
  def change
    create_table :abcs do |t|
      t.string :name

      t.timestamps
    end
  end
end
