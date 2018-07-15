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
  puts cart
  cart.map do |vegetable, details|
    return {
      vegetable => {
        :price => details[:clearance] ? details[:price] * .8 : details[:price],
        :clearance => details[:clearnce],
        :count => details[:count]
      }
    }
  end
end

def checkout(cart, coupons)
  # code here
end
