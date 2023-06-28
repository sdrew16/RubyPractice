require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts my_password

puts "version: " + my_password.version.to_s
puts "cost: " + my_password.cost.to_s
puts my_password == 'not my password'
puts my_password == 'my password'