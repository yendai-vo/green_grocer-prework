def consolidate_cart(cart)
  # code here
  consolidatedCart = {}

  cart.each do |vegetable, details|
    consolidatedCart[vegetable] = details
    consolidatedCart[vegetable].merge({:count => 1})
  end
  puts consolidatedCart
  return consolidatedCart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
