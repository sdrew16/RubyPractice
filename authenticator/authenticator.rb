# this is a basic idea of an authenticator (homework for The Complete Ruby on Rails Developer Course)

users = [
  {username: 'John', password: 'pass1'},
  {username: 'Sally', password: 'pass2'},
  {username: 'Mark', password: 'pass3'},
  {username: 'Bob', password: 'pass4'},
  {username: 'Amy', password: 'pass5'}
]

def authenticate_user(known_users)
  for attempts in 0...3 
    p 'username: '
    uname = gets.chomp
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



