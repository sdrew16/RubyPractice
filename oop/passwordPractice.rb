# adding in my password module:
# I could just type in require_relative 'password_module' 
# But if I want to just use require like a normal module, I have to add the current directory to my load path
$LOAD_PATH << '.'
require 'password_module'

# to use the below code, we would need to maybe wrap the other class in another toolkit class

=begin
my_password = PasswordTools.create_hash_digest("my password")
puts my_password

puts "version: " + my_password.version.to_s
puts "cost: " + my_password.cost.to_s
puts my_password == 'not my password'
puts my_password == 'my password'

=end