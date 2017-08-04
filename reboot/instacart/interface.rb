#solution




# interface.rb

# Pseudo-code
# 1. Print Welcome
# 2. Define your store (what items are for sale?)
# 3. Get items from the user (shopping)
# 4. Print the bill (checkout)
# 5. Store and Cart Model

puts "Welcome to Fresh and Fruty Tooty"

items = {
          "kiwi" => 1.25,
          "banana" => 0.5,
          "mango" => 4,
          "asparagus" => 9
}
items.each do |key, value|
  puts "-#{key} | $#{value}"
end

cart = []
user_choice = nil
until user_choice == "quit"
  puts "Which item do you want to add? (type 'quit' to checkout)"
  user_choice = gets.chomp
  if items.keys.include?(user_choice) # CRITICAL SUM OF ITEMS KEYS!!
  cart << items[user_choice]
  end
end

puts "The Bill is #{cart.reduce(:+)}"

#Method for sum of list PART 2
# ruby interface.rb
# > --------------------
# > Welcome to Instacart
# > --------------------
# > In our store today:
# > kiwi: 1.25€
# > banana: 0.5€
# > mango: 4€
# > asparagus: 9€
# > --------------------
# > Which item? (or 'quit' to checkout)
# > kiwi
# > How many?
# > 2
# > Which item? (or 'quit' to checkout)
# > mango
# > How many?
# > 3
# > Which item? (or 'quit' to checkout)
# > quit
# > -------BILL---------
# > kiwi: 2 X 1.25€ = 2.5€
# > mango: 3 X 4€ = 12€
# > TOTAL: 14.5€
# > --------------------



#                         Method for sum of list PART 1

# ruby interface.rb
# > --------------------
# > Welcome to Instacart
# > --------------------
# > In our store today:
# > kiwi: 1.25€
# > banana: 0.5€
# > mango: 4€
# > asparagus: 9€
# > --------------------
# > Which item? (or 'quit' to checkout)
# > kiwi
# > Which item? (or 'quit' to checkout)
# > pineapple
# > Sorry, we don't have pineapple today..
# > Which item? (or 'quit' to checkout)
# > mango
# > Which item? (or 'quit' to checkout)
# > quit
# > -------BILL---------
# > TOTAL: 5.25€
# > --------------------
