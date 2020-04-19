class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|

      t.integer :user_id, null: false
      t.integer :art_id, null: false
      t.timestamps null: false
    end
  end
end
