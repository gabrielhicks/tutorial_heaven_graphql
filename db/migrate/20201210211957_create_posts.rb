class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.boolean :status, default: true
      t.string :image
      t.string :github
      t.string :difficulty

      t.timestamps
    end
  end
end
