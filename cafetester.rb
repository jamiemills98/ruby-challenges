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
        latte_amount = gets.to_i
        add_order[0][0] += latte_amount
        

    when "scone", "Scone"
        puts "How many?"
        answer = gets.to_i
        add_order[1][0] += answer
        #scone_cost = Cost.new
        #scone_cost.total_cost(5, answer)
        
    when "tea", "Tea"
        puts "How many?"
        answer = gets.to_i
        add_order[2][0] += answer
        #tea_cost = Cost.new
        #tea_cost.total_cost(3, answer)

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
puts "Total cost = $ "


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

