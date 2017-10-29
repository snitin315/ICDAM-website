class CreateSpecialSessions < ActiveRecord::Migration
  def change
    create_table :special_sessions do |t|

      t.timestamps null: false
    end
  end
end
