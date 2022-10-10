class Sinhvien
  attr_accessor :name,:age,:school

  def initialize(name, age, school)
    @name = name
    @age = age
    @school = school
  end

  def show
    puts "Student name: #{name} - Age: #{age}"
    puts "School: #{school}"
  end
end
class Themuon

  attr_accessor :student,:id,:borrowDate,:paymentDate,:bookId

  def initialize(student, id, borrowDate, paymentDate,  bookId)
    @student = student
    @id = id
    @borrowDate = borrowDate
    @paymentDate = paymentDate
    @bookId = bookId
  end

  def show
    student.to_s
    puts "ID: #{id}"
    puts "Borrow date: #{borrowDate}"
    puts "Payment date: #{paymentDate}"
    puts "Book id: #{bookId}"
  end
end

class QLTM
  attr_accessor :cards

  def initialize
    @cards =  Array.new
  end

  def add(card)
    cards << card
  end

  def delete(id)
    card = cards.delete_if { |item| item.id.eql?id}
    print card
  end

  def display
    cards.each { |item| item.show }
  end
end

qltm = QLTM.new

choose = 1
while choose < 4 && choose > 0

  puts "\n1. Them the muon"
  puts "2. Danh sach the muon"
  puts "3. Xoa the muon"
  puts "4. Thoat"

  print "Lua chon cua ban: "
  choose = gets.chomp.to_i

  system("cls")

  case choose
  when 1
    system("cls")
    qltm.display
  when 2
    system("cls")
    qltm.display
  when 3
    system("cls")
    print "Nhap ma phieu muon: "
    ma = gets.chomp
    qltm.delete(ma)
  end
end