class CreateListitems < ActiveRecord::Migration[7.0]
  def change
    create_table :listitems do |t|
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
