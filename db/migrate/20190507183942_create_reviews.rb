class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :points
      t.references :user, foreign_key: true
      t.references :idea, foreign_key: true

      t.timestamps
    end
  end
end
