# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas
class Order

    def order(amount, item)
        return amount, item
    end 

    def to_s
        return "#{amount} #{item}"
    end 
end
add_order = Order.new
puts add_order.order(6, "Lattes")
add_order2 = Order.new
puts add_order2.order(2, "Scones")
add_order3 = Order.new
puts add_order3.order(3, "Teas")


# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make

# Print the final order so you know what to make.

puts "What would you like to order?"
customer_order = gets.chomp


case customer_order
when "latte", "Latte"
    add_order += 1
when "scone", "Scone"
    add_order2 += 1
when "tea", "Tea"
    add_order3 += 1
else 
    puts "Sorry, please choose a latte, scone or tea."
end 

add_order.each do |amount, item|
    puts "#{amount} #{item}"
end






    


    

# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.
class Profit
end
    
# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00
