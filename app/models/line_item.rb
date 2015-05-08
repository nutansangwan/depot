class LineItem < ActiveRecord::Base
 belongs_to :order
 belongs_to :product
 belongs_to :cart
 belongs_to :produce
 has_many :line_items

# attr_accessible :cart_id, :product_id, :product
def total_price
product.price * quantity
end


end
