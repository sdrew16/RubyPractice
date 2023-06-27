require 'colorize'

dial_book = {
  "new york" => 212,
  "new brunswick" => 732,
  "edison" => 908,
  "plainsboro" => 609,
  "san francisco" => 301,
  "miami" => 305,
  "palo alto" => 650,
  "evanston" => 847,
  "orlando" => 407,
  "lancaster" => 717,
  "portland" => 503
}

# get city names from hash, return a list of strings (city names)
def get_city_names(some_hash)
  
end

# get the area code of a particular city
def get_area_code(some_hash, city)
  
end

# execution flow

loop do
  print "Wound you like to get the area code for a city? (Y/N) "
  ans = gets.chomp.downcase
  until ['y','n'].include?(ans)
    print "Please enter a valid response (y or n): "
    ans = gets.chomp.downcase
  end

  if ans == 'y'
     puts "I will now print out city names"
  else
    puts "We are working on implementing city lookup by area code. Goodbye!".yellow
    exit 
  end
end