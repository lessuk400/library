class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :image
      t.text :description
      t.string :genre
      t.string :author
      t.integer :length
      t.integer :book_id, foreign_key: true

      t.timestamps
    end
  end
end
