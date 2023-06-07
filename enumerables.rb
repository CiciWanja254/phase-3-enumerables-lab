require 'pry'

def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  ]
end

def get_names(spicy_foods)
  spicy_foods.map { |food| food[:name] }
end

def spiciest_foods(spicy_foods)
  spicy_foods.select { |food| food[:heat_level] > 5 }
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level_emoji = '🌶' * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level_emoji}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| food[:cuisine] == cuisine }
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by { |food| food[:heat_level] }
end

def print_spiciest_foods(spicy_foods)
  spiciest_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods)
end

def average_heat_level(spicy_foods)
  total_heat_level = spicy_foods.sum { |food| food[:heat_level] }
  total_heat_level / spicy_foods.length
end

# Test the methods
foods = spicy_foods

puts "get_names:"
puts get_names(foods).inspect

puts "\nspiciest_foods:"
puts spiciest_foods(foods).inspect

puts "\nprint_spicy_foods:"
print_spicy_foods(foods)

puts "\nget_spicy_food_by_cuisine:"
puts get_spicy_food_by_cuisine(foods, "American").inspect
puts get_spicy_food_by_cuisine(foods, "Thai").inspect

puts "\nsort_by_heat:"
puts sort_by_heat(foods).inspect

puts "\nprint_spiciest_foods:"
print_spiciest_foods(foods)

puts "\naverage_heat_level:"
puts average_heat_level(foods)
