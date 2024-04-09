class Order < ApplicationRecord
    has_many(:listitems, dependent: :destroy)
    validates(:name, :address, :email, presence: true)
    PAYMENT_TYPES = ["Check", "Credit Card", "Venmo", "Paypal", "Zelle"]
    validates(:paytype, inclusion: PAYMENT_TYPES)

    def update_listitems_table(cart_object)
        cart_object.listitems.each do |item|
            item.cart_id = nil
            item.order_id = self.id
        end
    end
end
