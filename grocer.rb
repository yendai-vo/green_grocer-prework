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
  cartWithCoupons = {}
  cart.each do |vegetable, details |
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
    cartWithCoupons[vegetable] ||= details
  end
  return cartWithCoupons
end

def apply_clearance(cart)
  # code here
  # puts cart
  something = cart.transform_values do |values|
    # return values
    return {:price=> 1, :clearance=> 1, :count=>1}
    # {
    #   :price => values[:clearance] ? values[:price] * .8 : values[:price],
    #   :clearance => values[:clearance],
    #   :count => values[:count]
    # }
  end
  puts something
  return something
end

def checkout(cart, coupons)
  # code here
end
