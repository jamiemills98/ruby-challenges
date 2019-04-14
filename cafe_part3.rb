# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price


add_order = []
add_order[0] = [0, "Lattes", 0]
add_order[1] = [0, "Scones", 0]
add_order[2] = [0, "Teas", 0]


loop do
puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
    customer = gets.chomp

    case customer
    when "latte", "Latte"
        puts "How many?"
        answer = gets.to_i
        add_order[0][0] += answer
        add_order[0][2] += answer * 4
        

    when "scone", "Scone"
        puts "How many?"
        answer = gets.to_i
        add_order[1][0] += answer
        add_order[1][2] += answer * 5
        
    when "tea", "Tea"
        puts "How many?"
        answer = gets.to_i
        add_order[2][0] += answer
        add_order[2][2] += answer * 3

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
amount = add_order[0][2] + add_order[1][2] +add_order[2][2]
puts "Total order = $#{amount}"
