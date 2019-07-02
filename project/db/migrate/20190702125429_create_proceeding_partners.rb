class CreateProceedingPartners < ActiveRecord::Migration
  def change
    create_table :proceeding_partners do |t|
      t.string :image
      t.string :caption

      t.timestamps null: false
    end
  end
end
