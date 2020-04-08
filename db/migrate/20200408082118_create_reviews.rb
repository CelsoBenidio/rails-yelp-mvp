class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.integer :restaurant_id, null: false
      t.timestamps
      t.index [:restaurant_id], name: :index_reviews_on_restaurant_id
    end

    add_foreign_key :reviews, :restaurants
  end
end
