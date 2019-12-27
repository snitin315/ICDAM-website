class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :download_file
      t.string :file_name

      t.timestamps null: false
    end
  end
end
