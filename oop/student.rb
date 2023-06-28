require 'colorize'
class Student
  attr_accessor :first_name, :last_name, :email, :user_name

  @first_name #this is an instance variable (the @ sign). Since classes are encapsulated, if we want to set these outside of this class, we have to use setter notation
  @last_name
  @email
  @user_name
  @password # passwords are never stored as strings - they are hashed. MD5 is a popular hashing algorithm bcrypt uses md5 (bcrypt also uses salt)
  

  def initialize(fname, lname)
    unless lname && fname
      puts "Error: ".red + "first name and last name required"
    end

    @first_name=fname.downcase
    @last_name=lname.downcase
    @user_name = @first_name[0]+@last_name
    @email = @user_name+"@university.edu"

  end

  def to_s # modifying the built in to string class
    return "#{@last_name.capitalize}, #{@first_name.capitalize} (#{@email})"
  end
end

shane = Student.new('Shane',"Drew")
puts shane
