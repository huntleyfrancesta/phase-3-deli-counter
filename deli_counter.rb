# Write your code here.

katz_deli = [] 
def line(customers_array)
  current_line = "The line is currently:"
  if customers_array.size == 0 
    puts "The line is currently empty."
    return
  end
  customers_array.each_with_index do |customer, idx|
    current_line += " #{idx + 1}. #{customer}"
  end
  puts current_line
end

def take_a_number(customers_array, new_customer_name)
  
  puts "Welcome, #{new_customer_name}. You are number #{customers_array.length + 1} in line."
  customers_array.push(new_customer_name)
end

def now_serving(customers_array)
  if customers_array.length == 0
    puts 'There is nobody waiting to be served!'
    return
  end
  puts "Currently serving #{customers_array[0]}."
  customers_array.shift
end