class CreateAboutInstitutes < ActiveRecord::Migration
  def change
    create_table :about_institutes do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
