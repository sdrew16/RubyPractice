require 'bcrypt'


module PasswordTools
  # To use the tools below in another class, we need to remove the self.'s so the methods will 
  # be loaded into the class that's using them (will be called like student.create_hash_digest)

  def create_hash_digest(raw_password)
    BCrypt::Password.create(raw_password)
  end

  def verify_hash_digest(hashed_password)
    BCrypt::Password.new(hashed_password)
  end

  
  # Takes in a list of unsecured users in the formath
  # [
  #   {:username=>'username', :password=>'raw password'},
  #   {:username=>'username1', :password=>'raw password1'},
  #   ...
  # ]
  
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


  # Takes in username, raw password and user_auth in format
  # [
  #   {:username=>'username', :password=>'hashed password'},
  #   {:username=>'username1', :password=>'hashed password1'},
  #   ...
  # ]


  def authenticate_user(username, password, user_auth)
    user_auth.each do |user|
      if user[:username] == username && verify_hash_digest(user[:password]) == password
        return user
      end
    end
    return 'Authentication failed'
  end
end