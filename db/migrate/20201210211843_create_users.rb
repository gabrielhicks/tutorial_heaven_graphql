class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :image
      t.string :chaticon
      t.boolean :is_active

      t.timestamps
    end
  end
end
