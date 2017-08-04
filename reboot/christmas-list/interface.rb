# require "open-uri"
# require "nokogiri"

# puts "What are you searching on Etsy?"
# article = gets.chomp

# # 1. We get the HTML file thanks to open-uri
# file = open("https://www.etsy.com/search?q=#{article}")

# # 2. We build a Nokogiri document from this file
# doc = Nokogiri::HTML(file)

# # 3. We search every elements with class="card" in our HTML doc

# doc.search(".card").each do |card|
#   # 4. for each element found, we extract its title and print it
#   title = card.search(".card-title").text.strip
#   puts title
# end

puts "Welcome to your Christmas giftlist"

etsy_jeans = ["Levis Blue Jeans", "Vintage Jeans", "Cargo Jeans Pants", "White Jeans"]
gift_list = []
marked_item_array = []
wish_list_jeans = []

user_choice = nil
until user_choice == "quit"

  puts "Which action: list, add, delete, mark, purchased_list, wish_list, quit?"
  action = gets.chomp

  if action == "add"
    puts "What's your wish?"
    wish = gets.chomp
    gift_list << [wish]

  elsif action == "delete"
    puts "At what index?"
    delete_item = gets.chomp.to_i
    gift_list.delete_at(delete_item)
    puts "Item at index #{delete_item} deleted"

  elsif action == "list"
    gift_list.each_with_index do |item, index|
    puts "#{index + 1} --------- #{item}"
    end
    if gift_list.any? == false
      puts "Your shopping cart is empty!"
    end

  elsif action == "mark"
    puts "Which item have you bought (give the index)?"
    marked_item = gets.chomp.to_i
    marked_item_array << marked_item
    marked_item_array.each_with_index do |item, index|
    puts "#{item + 1}--#{wish}--[X] was purchased!!"
    end

  elsif action == "purchased_list"
    marked_item_array.each_with_index do |item, index|
    puts "#{index + 1} --------- #{item}"
    end
    if marked_item_array.any? == false
      puts "You have not marked any items!"
    end

  elsif action == "wish_list"
    etsy_jeans.each_with_index do |jean, index|
      p "#{index +1}---#{jean}"
    end
    puts "Choose your jeans by index number?"
    chosen_jeans = gets.chomp
    Puts "#{chosen_jeans} added to your wish_list"
    wish_list_jeans << chosen_jeans

  elsif action == "quit"
    puts "Goodbye"

  else
    puts "This is not a valid choice"
  end
end
