class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :photo_url
      t.datetime :date

      t.timestamps
    end
  end
end
