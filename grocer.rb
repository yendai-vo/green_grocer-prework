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
      consolidatedCart[currentVegetable][:count] = 1
    end
  end
  return consolidatedCart
end

def apply_coupons(cart, coupons)
  # code here
  cartWithCoupons = {}
  cart.each do |vegetable, details |
    # if coupon matches vegetable: remove count and add that to name + coupon and set the count to the result of the division
    if vegetable == coupons[:item]
      couponNumber = details[:count]/coupons[:num]
      nonCouponNumber = details[:count]%coupons[:num]
      if couponNumber > 0
        cartWithCoupons["#{vegetable} W/COUPON"] = {
          :price => coupons[:cost],
          :clearance => details[:clearance],
          :count => couponNumber
        }
      end
      if nonCouponNumber > 0
        cartWithCoupons[vegetable] = {
          :price => details[:price],
          :clearance => details[:clearance],
          :count => nonCouponNumber
        }
      end
    else
      cartWithCoupons[vegetable] = details
    end
  end
  puts cartWithCoupons
  return cartWithCoupons
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
