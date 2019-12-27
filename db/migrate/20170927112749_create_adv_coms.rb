class CreateAdvComs < ActiveRecord::Migration
  def change
    create_table :adv_coms do |t|
      t.string :name
      t.string :information

      t.timestamps null: false
    end
  end
end
