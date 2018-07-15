def consolidate_cart(cart)
  # code here
  consolidatedCart = {}

  cart.each do |vegetable, details|
    consolidatedCart[vegetable] = details
  end

  return consolidate_cart
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
