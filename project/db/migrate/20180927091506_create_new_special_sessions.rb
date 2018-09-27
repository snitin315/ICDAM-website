class CreateNewSpecialSessions < ActiveRecord::Migration
  def change
    create_table :new_special_sessions do |t|
      t.string :file
      t.string :name

      t.timestamps null: false
    end
  end
end
