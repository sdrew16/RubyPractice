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

# get city names from hash
# return a list of strings (city names)
def get_city_names(city_hash)
  return city_hash.keys
end

# get the area code of a particular city
def get_area_code(city, city_hash)
  return city_hash[city]
end

# get the city associated with an area code
def get_city(area_code_to_find, city_hash)
  city_hash.each do |city, area_code|
    return city if area_code == area_code_to_find
  end
  return nil
end

# execution flow
loop do
  print "Would you like to look up an area code (A) or a city (C)? (q to quit) ".cyan
  ans = gets.chomp.downcase
  until ['a','c','q'].include?(ans)
    print "Please enter a valid response (A, C or Q): ".cyan
    ans = gets.chomp.downcase
  end

  # enter city --> area code dialogue
  if ans == 'a'
    cities=get_city_names(dial_book)
    # print out each city for user
    cities.each do |city|
      puts city.capitalize
    end

    # get a valid city name from user
    print "Which city would you like to lookup? ".cyan
    city = gets.chomp.downcase
    until cities.include?(city)
      print "Please enter a city from the list above: ".cyan
      city = gets.chomp.downcase
    end

    # print out area code for a user
    puts "The area code for #{city} is #{dial_book[city]}" 
  end

  # enter area code --> city name dialogue
  if ans == 'c'
    print "Which area code would you like to lookup? ".cyan
    code_to_find = gets.chomp.downcase

    city_found = get_city(code_to_find.to_i, dial_book) if code_to_find.to_i.to_s == code_to_find
    if city_found
      puts "The city associated with ".cyan + "#{code_to_find} ".yellow + "is ".cyan + "#{city_found}.".yellow
    else
      puts "We don't have a city associated with #{code_to_find}"
    end
  end

  if ans=='q'
    exit
  end


end