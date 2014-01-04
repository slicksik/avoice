class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.references :author

      t.timestamps
    end
    add_index :reviews, :author_id
  end
end
