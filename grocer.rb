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
  puts cart
  puts coupons
  # code here
  # puts coupons
  # puts coupons[:item]
  cartWithCoupons = {}
  cart.each do |vegetable, details |
    # if coupon matches vegetable: remove count and add that to name + coupon and set the count to the result of the division
    coupons.each do |coupon|
      if vegetable == coupon[:item]
        couponNumber = details[:count]/coupon[:num]
        nonCouponNumber = details[:count]%coupon[:num]
        if couponNumber > 0
          cartWithCoupons["#{vegetable} W/COUPON"] = {
            :price => coupon[:cost],
            :clearance => details[:clearance],
            :count => couponNumber
          }
        end
        cartWithCoupons[vegetable] = {
          :price => details[:price],
          :clearance => details[:clearance],
          :count => nonCouponNumber
        }
      end
    end
  else
    cartWithCoupons[vegetable] = details
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
