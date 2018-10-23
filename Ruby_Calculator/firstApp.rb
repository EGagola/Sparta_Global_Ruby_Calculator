def sum_nums num1,num2
  num1 + num2
end

def minus_nums num1,num2
  num1 - num2
end

def times_nums num1,num2
  num1 * num2
end

def divide_nums num1,num2
  num1 / num2
end

def sqr_num num1
  num1 * num1
end

def root_num num1
  Math.sqrt(num1)
end

def bmi_m mass,height
  ((mass/height)/height)
end

def bmi_i mass,height
  ((mass/height)/height) * 703
end

def trip distance,fuel_efficiency,costpg,speed
  time = distance / speed
  if speed > 60
    fastness = (speed - 60) * 2
    fuel_efficiency -= fastness
    if fuel_efficiency < 10
      fuel_efficiency = 10
    end
  end
  cost = ((distance/fuel_efficiency) * costpg)
  puts "The time taken is #{time} and the cost is £#{cost}"
end

p "basic, advanced, or trip? (b,a,t)"
calctype = gets.chomp
if calctype == "b"
  p "basic selected, which function? (+,-,*,/)"
  basic = gets.chomp
  if basic == "+"
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{sum_nums number1,number2}"
  elsif basic == "-"
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{minus_nums number1,number2}"
  elsif basic == "*"
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{times_nums number1,number2}"
  elsif basic == "/"
    number1 = gets.chomp.to_f
    number2 = gets.chomp.to_f
    puts "The result is #{divide_nums number1,number2}"
  end
elsif calctype == "a"
  p "advanced selected, which function? (sqr,root,bmi)"
  advanced = gets.chomp
  if advanced == "sqr"
    number1 = gets.chomp.to_f
    puts "The result is #{sqr_num number1}"
  elsif advanced == "root"
    number1 = gets.chomp.to_f
    puts "The result is #{root_num number1}"
  elsif advanced == "bmi"
    p "bmi selected, metric or imperial? "
    mori = gets.chomp
    if mori == "m"
      number1 = gets.chomp.to_f
      number2 = gets.chomp.to_f
      puts "The result is #{bmi_m number1,number2}"
    elsif mori == "i"
      number1 = gets.chomp.to_f
      number2 = gets.chomp.to_f
      puts "The result is #{bmi_i number1,number2}"
    end
  end
elsif calctype == "t"
  p "Enter distance, fuel efficiency, cost per gallon and speed"
  dist = gets.chomp.to_f
  fuel = gets.chomp.to_f
  costpergall = gets.chomp.to_f
  speeding = gets.chomp.to_f
  puts trip dist,fuel,costpergall,speeding
end
