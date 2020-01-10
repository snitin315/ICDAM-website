class CreateEuroTechBoards < ActiveRecord::Migration
  def change
    create_table :euro_tech_boards do |t|
      t.string :name
      t.string :information
      
      t.timestamps null: false
    end
  end
end
