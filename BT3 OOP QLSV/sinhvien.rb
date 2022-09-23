class Man
  attr_accessor :name, :gender, :hairColor, :height, :weight, :phone, :email

  def initialize(name, gender, height, weight, phone, email, hairColor)
    @name = name
    @gender = gender
    @height = height
    @weight = weight
    @phone = phone
    @email = email
    @hairColor = hairColor
  end

    def show
      print "\nHo ten: ", name
      print "\nGioi tinh: ", gender, " - Toc: ", hairColor
      print "\nChieu cao: ", height, " - Can nang: ", weight
      print "\nSDT: ", phone, " - Email: ", email
    end  
end

class Student < Man
    attr_accessor :id, :_class, :school, :grade

    def initialize(name, gender, height, weight, phone, email, hairColor, id, _class, school, grade)
      super(name, gender, height, weight, phone, email, hairColor)
      @id = id
      @class = _class
      @school = school
      @grade = grade
    end

    def show
      super
      print "\nID: ", id
      print "\nLop: ", _class, " - Truong: ", school
      print "\nDiem trung binh: ", grade
    end
end

std1 = Student.new("Nguyễn Thị Khánh Hạ", "Male", 150, 42, "0123456789","khanhha@gmail.com", "black", "1911505310117", "19T1", "SPKT", 8)
std2 = Student.new("Nguyễn Văn A", "Male", 150, 42, "0123456789","khanhha@gmail.com", "black", "1911505310117", "19T1", "SPKT", 9)
std3 = Student.new("Nguyễn Văn B", "Male", 150, 42, "0123456789","khanhha@gmail.com", "black", "1911505310117", "19T1", "SPKT", 7)
std4 = Student.new("Nguyễn Văn C", "Male", 150, 42, "0123456789","khanhha@gmail.com", "black", "1911505310117", "19T1", "SPKT", 6)
std5 = Student.new("Nguyễn Văn D", "Male", 150, 42, "0123456789","khanhha@gmail.com", "black", "1911505310117", "19T1", "SPKT", 10)

std = [std1, std2, std3, std4, std5]

puts "DANH SACH CHUA SAP XEP"
std.each do |val|
  val.show
  puts "\n------"
end

std = std.sort_by!{|obj| obj.grade}

std = std.reverse

puts "DANH SACH DA SAP XEP"
std.each do |val|
  val.show
  puts "\n------"
end