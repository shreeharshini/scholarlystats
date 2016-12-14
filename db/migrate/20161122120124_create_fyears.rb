class CreateFyears < ActiveRecord::Migration[5.0]
  def change
    create_table :fyears do |t|
     
      t.timestamps
    end
  end
end
