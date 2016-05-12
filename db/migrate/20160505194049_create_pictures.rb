class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
