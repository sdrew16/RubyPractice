class Student
  @first_name #this is an instance variable (the @ sign). Since classes are encapsulated, if we want to set these outside of this class, we have to use setter notation
  @last_name
  @email
  @user_name
  @password

  def first_name=(name) #this is a setter
    @first_name = name
  end

  def first_name #this is a getter
    return @first_name
  end

  def last_name=(name)
    @last_name = name
  end

  def last_name
    return @last_name
  end

  def email=(email)
    @email = email
  end

  def email 
    return email
  end

  def user_name=(uname)
    @user_name = name
  end

  def user_name
    return user_name 
  end

  def password=(pword)
    @password=pword
  end

  def to_s # modifying the built in to string class
    return "#{@last_name.capitalize}, #{@first_name.capitalize} (#{@user_name})"
  end
end

shane = Student.new
shane.first_name = 'shane'
shane.last_name = 'drew'
puts shane