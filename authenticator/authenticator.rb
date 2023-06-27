# this is a basic idea of an authenticator (homework for The Complete Ruby on Rails Developer Course)

users = [
  {username: 'John'.downcase, password: 'pass1'},
  {username: 'Sally'.downcase, password: 'pass2'},
  {username: 'Mark'.downcase, password: 'pass3'},
  {username: 'Bob'.downcase, password: 'pass4'},
  {username: 'Amy'.downcase, password: 'pass5'}
]

def authenticate_user(known_users)
  for attempts in 0...3 
    p 'username: '
    uname = gets.chomp.downcase
    p 'password: '
    pword = gets.chomp

    known_users.each do |user|
      if user[:username] == uname && user[:password] == pword
         return 'success'
      end
    end
  end 

  return 'failed'
end

puts "Welcome to my authenticator!"
puts authenticate_user(users)



