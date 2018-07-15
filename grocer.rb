def consolidate_cart(cart)
  # code here
  consolidatedCart = {}

  cart.each do |vegetableHash|
    currentVegetable = vegetableHash.keys[0]
    currentVegetableDetails = vegetableHash.values[0]
    if consolidatedCart[currentVegetable]
      consolidatedCart[currentVegetable][:count] +=1
    else
      consolidatedCart[currentVegetable] = currentVegetableDetails
      consolidate_cart[currentVegetable][:count] = 1
    end
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
