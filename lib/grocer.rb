require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each{|item|
    if item[:item] == name
      return item
    end
  }
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = cart.each_with_object([]) {|item, arr|
    arr.push({:item => item[:item], :price => item[:price], :clearance => item[:clearance]})
    arr.each{|cart_item|
      if cart_item[:item] == item[:item]
        if !cart_item[:count]
          cart_item[:count] = 1
        else
          cart_item[:count] += 1
        end
      end
    }
  }
  # binding.pry
end


  