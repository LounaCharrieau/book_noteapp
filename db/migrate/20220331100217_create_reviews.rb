class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :theme
      t.string :comment

      t.timestamps
    end
  end
end
