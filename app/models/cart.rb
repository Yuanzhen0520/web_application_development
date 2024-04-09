class Cart < ApplicationRecord
    has_many(:listitems, dependent: :destroy)

    def add_item(product_id)
        current = self.listitems.find_by(product_id: product_id)
        if current
            current.quantity += 1
        else
            current = self.listitems.build(product_id: product_id)
        end
        current
    end

    def total_price
        self.listitems.to_a.sum {|item| item.product.price * item.quantity}
    end
end
