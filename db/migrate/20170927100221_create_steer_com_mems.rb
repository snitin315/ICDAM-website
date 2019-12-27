class CreateSteerComMems < ActiveRecord::Migration
  def change
    create_table :steer_com_mems do |t|
      t.string :name
      t.string :information
        t.integer :steercompost_id

      t.timestamps null: false
    end
  end
end
