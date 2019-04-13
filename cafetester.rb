# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price


add_order = []
add_order[0] = [0, "Lattes"]
add_order[1] = [0, "Scones"]
add_order[2] = [0, "Teas"]

loop do
puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
    customer = gets.chomp

    case customer
    when "latte", "Latte"
        puts "How many?"
        answer = gets.to_i
        add_order[0][0] += answer

    when "scone", "Scone"
        puts "How many?"
        answer = gets.to_i
        add_order[1][0] += answer
        
    when "tea", "Tea"
        puts "How many?"
        answer = gets.to_i
        add_order[2][0] += answer
        
    when "q", "Q"
        break
    else 
        puts "Sorry, please choose a latte, scone or tea."
    end 
    
    
    
end
puts "Thank you! here is your order: "
add_order.each do |key, value|
    puts "#{key} #{value}"
end


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

