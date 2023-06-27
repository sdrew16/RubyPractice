class Student
  attr_accessor :first_name, :last_name, :email, :user_name

  @first_name #this is an instance variable (the @ sign). Since classes are encapsulated, if we want to set these outside of this class, we have to use setter notation
  @last_name
  @email
  @user_name
  @password

  def to_s # modifying the built in to string class
    return "#{@last_name.capitalize}, #{@first_name.capitalize} (#{@user_name})"
  end
end

shane = Student.new
shane.first_name = 'shane'
shane.last_name = 'drew'
puts shane