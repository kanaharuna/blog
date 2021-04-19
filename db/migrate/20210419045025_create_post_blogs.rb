class CreatePostBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :post_blogs do |t|
      t.text :title
      t.text :body
      t.string :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
