require 'bcrypt'

def create_hash_digest(raw_password)
  BCrypt::Password.create(raw_password)
end

def verify_hash_digest(hashed_password)
  BCrypt::Password.new(hashed_password)
end

=begin
Takes in a list of unsecured users in the formath
[
  {:username=>'username', :password=>'raw password'},
  {:username=>'username1', :password=>'raw password1'},
  ...
]
=end
def create_secure_users(users_list)
  secured_users_list = []
  users_list.each do |user|
    secured_users_list.append({
      username: user[:username],
      password: create_hash_digest(user[:password])
    })
  end
  return secured_users_list
end

=begin
Takes in username, raw password and user_auth in format
[
  {:username=>'username', :password=>'hashed password'},
  {:username=>'username1', :password=>'hashed password1'},
  ...
]
=end
def authenticate_user(username, password, user_auth)
  user_auth.each do |user|
    if user[:username] == username && verify_hash_digest(user[:password]) == password
      return user
    end
  end
  return 'Authentication failed'
end

unsecured_users = [
  {username: 'Mike', password: 'p1'},
  {username: 'Angie', password: 'p2'},
  {username: 'Brit', password: 'p3'},
  {username: 'Oliver', password: 'p4'},
  {username: 'Ralph', password: 'p5'},
]

secured_users = create_secure_users(unsecured_users)
puts secured_users
puts authenticate_user('Mike', 'p1', secured_users)
puts authenticate_user('Mike', 'wrong password', secured_users)