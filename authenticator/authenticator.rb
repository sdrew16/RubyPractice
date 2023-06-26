# this is a basic idea of an authenticator (homework for The Complete Ruby on Rails Developer Course)

user_auth = {'Jane'=>'password1', 'Bob' => 'password2', 'Jill'=> 'password3'}

def authenticate_user(auth_hash)
  for i in 0...3 
    p 'username: '
    uname = gets.chomp
    p 'password: '
    pword = gets.chomp

    unless auth_hash.keys.include?(uname)
      puts "please try again"
      next
    end

    if pword == auth_hash[uname] 
      return 'success' 
    end

    puts "please try again"
  end 

  return 'too many attempts'
end

puts "Welcome to my authenticator!"
puts authenticate_user(user_auth)



