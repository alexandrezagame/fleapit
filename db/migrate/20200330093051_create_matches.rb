class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.date :matched_date
      t.boolean :exchanged, default: false
      t.references :item, foreign_key: { to_table: :items }
      t.references :other_item, foreign_key: { to_table: :items }
      t.timestamps
    end
  end
end
