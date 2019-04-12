
# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

add_order = []
add_order[0] = [6, "Lattes"]
add_order[1] = [2, "Scones"]
add_order[2] = [3, "Teas"]


# Write a program that asks the customer for their order. The customer
# Print the final order so you know what to make.

puts "What would you like to order?"
customer_order = gets.chomp


case customer_order
when "latte", "Latte"
    add_order[0][0] += 1
when "scone", "Scone"
    add_order[1][0] += 1
when "tea", "Tea"
    add_order[2][0] += 1
else 
    puts "Sorry, please choose a latte, scone or tea."
end 

add_order.each do |key, value|
    puts "#{key} #{value}"
end

# Part 2
# Print out the total profit for the orders you have.

class Profit

    def profits(num1, num2) 
        return num1 - num2
    end

end

latte = Profit.new
latte.profits(4, 2) * add_order[0][0]
puts "$#{latte.profits(4, 2) * add_order[0][0]} profit"

scones = Profit.new
scones.profits(5, 3)
puts "$#{scones.profits(4, 2) * add_order[1][0]} profit"

tea = Profit.new
tea.profits(3, 0.5)
puts "$#{tea.profits(4, 2) * add_order[2][0]} profit"




# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price



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

