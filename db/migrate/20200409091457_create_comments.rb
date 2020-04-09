class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.integer :user_id, null: false
      t.integer :art_id, null: false
      t.integer :comment_id
      t.text    :comment, null: false
      t.timestamps null: false
    end
  end
end
