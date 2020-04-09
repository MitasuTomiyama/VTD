class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|

      t.integer :artist_id, null: false
      t.string :opus, null: false
      t.text :explanation, null: false
      t.string :image_id
      t.string :video_id
      t.boolean :art_status, default: 1, null: false 
      t.timestamps null: false
    end
  end
end
