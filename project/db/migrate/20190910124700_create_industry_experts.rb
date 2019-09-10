class CreateIndustryExperts < ActiveRecord::Migration
  def change
    create_table :industry_experts do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
