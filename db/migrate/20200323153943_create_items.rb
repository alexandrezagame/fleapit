class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :gender
      t.integer :max_price
      t.integer :min_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
