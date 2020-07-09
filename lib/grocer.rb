require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  #binding.pry
  hash_info = nil
  collection.each do |index|
    index.each do |key, value|
      if value == name
        hash_info = index
      end
    end
  end
  hash_info
  #binding.pry
end

unconsolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

def consolidate_cart(cart)
  full_cart = cart.each_with_object([]) do |index,cart_array|
    index[:count] = 1
    if !cart_array.include?(index)
      cart_array << index
      binding.pry
    end
    if cart_array.include?(index)
      index[:count] +=
    end
  end
  full_cart
end
binding.pry
