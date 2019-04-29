class CreatePhotoGallery2019s < ActiveRecord::Migration
  def change
    create_table :photo_gallery2019s do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
