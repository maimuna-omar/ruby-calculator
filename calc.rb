def calculate
  puts "Welcome to the Calculator App!"
  puts "Please enter the first number:"
  num1 = get_number_input
  puts "Please enter the second number:"
  num2 = get_number_input
  operation = get_operation_input

  result = perform_operation(num1, num2, operation)
  if result.nil?
    puts "Invalid operation selected!"
  else
    puts "The result is: #{result}"
  end
end

def get_number_input
  number = nil
  loop do
    print "> "
    input = gets.chomp
    begin
      number = Float(input)
      break
    rescue ArgumentError
      puts "Invalid input! Please enter a valid number."
    end
  end
  number
end

def get_operation_input
  operation = nil
  loop do
    puts "Please select an operation:"
    puts "1. Addition (+)"
    puts "2. Subtraction (-)"
    puts "3. Multiplication (*)"
    puts "4. Division (/)"
    print "> "
    input = gets.chomp
    case input
    when "1"
      operation = :addition
      break
    when "2"
      operation = :subtraction
      break
    when "3"
      operation = :multiplication
      break
    when "4"
      operation = :division
      break
    else
      puts "Invalid input! Please enter a valid operation number."
    end
  end
  operation
end

def perform_operation(num1, num2, operation)
  case operation
  when :addition
    num1 + num2
  when :subtraction
    num1 - num2
  when :multiplication
    num1 * num2
  when :division
    if num2.zero?
      puts "Error: Division by zero!"
      return nil
    else
      num1 / num2
    end
  end
end

calculate it
