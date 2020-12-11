class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :topic
      t.string :summary
      t.string :image
      t.string :root_url

      t.timestamps
    end
  end
end
