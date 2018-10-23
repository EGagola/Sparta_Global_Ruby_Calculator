
# functions
# Add
def sum_nums num1,num2
  num1 + num2
end
# Subtract
def minus_nums num1,num2
  num1 - num2
end
# Times
def times_nums num1,num2
  num1 * num2
end
# Divide
def divide_nums num1,num2
  num1 / num2
end
# Square
def sqr_num num1
  num1 * num1
end
# Square root
def root_num num1
  Math.sqrt(num1)
end
# BMI Metric
def bmi_m mass,height
  ((mass/height)/height)
end
# BMI Imperial
def bmi_i mass,height
  ((mass/height)/height) * 703
end
# Trip
def trip distance,fuel_efficiency,costpg,speed
  time = distance / speed
  if speed > 60
    fastness = (speed - 60) * 2
    fuel_efficiency -= fastness
    p fastness
    if fuel_efficiency < 10
      fuel_efficiency = 10
      p fuel_efficiency
    end
  end
  p "fuel_efficiency is #{fuel_efficiency}"
  cost = ((distance/fuel_efficiency) * costpg)
  puts "The time taken is #{time} and the cost is £#{cost}"
end

# ---------------------------------------------------------------------------------
#### use $stdout.flush after prints to make them show before end of if statements!!
#----------------------------------------------------------------------------------

#calculator
p "basic, advanced, or trip? (b,a,t)"
calctype = gets.chomp
# basic
if calctype == "b" # Basic
  p "basic selected, which function? (+,-,*,/)"
  basic = gets.chomp
  if basic == "+" # Add
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{sum_nums number1,number2}"
  elsif basic == "-" # Subtract
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{minus_nums number1,number2}"
  elsif basic == "*" # Times
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{times_nums number1,number2}"
  elsif basic == "/" # Divide
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{divide_nums number1,number2}"
  end
# advanced
elsif calctype == "a"
  p "advanced selected, which function? (sqr,root,bmi)"
  advanced = gets.chomp
  if advanced == "sqr" # Square
    number1 = gets.chomp.to_f
    puts "The result is #{sqr_num number1}"
  elsif advanced == "root" # Square root
    number1 = gets.chomp.to_f
    puts "The result is #{root_num number1}"
  elsif advanced == "bmi" # BMI
    p "bmi selected, metric or imperial? "
    mori = gets.chomp
    if mori == "m" # Metric
      number1 = gets.chomp.to_f
      number2 = gets.chomp.to_f
      puts "The result is #{bmi_m number1,number2} kg/m2"
    elsif mori == "i" # Imperial
      number1 = gets.chomp.to_f
      number2 = gets.chomp.to_f
      puts "The result is #{bmi_i number1,number2} kg/m2"
    end
  end
# trip
elsif calctype == "t"
  p "Enter distance, fuel efficiency, cost per gallon and speed"
  dist = gets.chomp.to_f
  fuel = gets.chomp.to_f
  costpergall = gets.chomp.to_f
  speeding = gets.chomp.to_f
  puts trip dist,fuel,costpergall,speeding
end
