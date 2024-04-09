class AddOrderToListitems < ActiveRecord::Migration[7.0]
  def change
    add_reference :listitems, :order, foreign_key: true
  end
end
