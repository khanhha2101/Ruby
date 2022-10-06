class Thisinh
  attr_accessor :SBD, :hoTen, :diaChi, :mucUuTien, :Khoi

  def initialize(sbd, hoten, diachi, uutien, khoi)
    @SBD = sbd
    @hoTen = hoten
    @diaChi = diachi
    @mucUuTien = uutien
    @Khoi = khoi
  end

  def show
    kh = "Khoi A"
    if @Khoi == 2
      kh = "Khoi B"
    end
    if @Khoi == 3
      kh = "Khoi C"
    end
    print "SBD: ", @SBD
    print "\nHo ten: ", @hoTen
    print "\nKhoi: ", kh
    print "\nDia chi: ", @diaChi
    print "\nMuc uu tien: ", @mucUuTien

  end
end

class KhoiA < Thisinh
  attr_accessor :Toan, :Ly, :Hoa

  def initialize(sbd, hoten, diachi, uutien, khoi, toan, ly, hoa)
    super(sbd, hoten, diachi, uutien, khoi)
    @Toan = toan
    @Ly = ly
    @Hoa = hoa
  end

  def show
    super
    puts "\nDiem Toan: #{@Toan} Ly: #{@Ly} Hoa: #{@Hoa}"
  end
end

class KhoiB < Thisinh
  attr_accessor :Toan, :Hoa, :Sinh

  def initialize(sbd, hoten, diachi, uutien, khoi, toan, hoa, sinh)
    super(sbd, hoten, diachi, uutien, khoi)
    @Toan = toan
    @Hoa = hoa
    @Sinh = sinh
  end

  def show
    super
    puts "\nDiem Toan: #{@Toan} Hoa: #{@Hoa} Sinh: #{@Sinh}"
  end
end

class KhoiC < Thisinh
  attr_accessor :Van, :Su, :Dia

  def initialize(sbd, hoten, diachi, uutien, khoi, van, su, dia)
    super(sbd, hoten, diachi, uutien, khoi)
    @Van = van
    @Su = su
    @Dia = dia
  end

  def show
    super
    puts "\nDiem Van: #{@Van} Su: #{@Su} Dia: #{@Dia}"
  end
end

class Tuyensinh
  attr_accessor :thiSinhs

  def initialize
    thisinh1 = KhoiA.new("111", "Khanh Ha", "Quang Nam", "1", 1, 8, 9, 7)
    thisinh2 = KhoiA.new("112", "Khanh Ha1", "Quang Nam", "2", 1, 8, 9, 7)
    thisinh3 = KhoiB.new("113", "Khanh Ha2", "Quang Nam", "1", 2, 8, 9, 7)
    thisinh4 = KhoiB.new("114", "Khanh Ha3", "Quang Nam", "3", 2, 8, 9, 7)
    thisinh5 = KhoiC.new("115", "Khanh Ha4", "Quang Nam", "0", 3, 8, 9, 7)

    @thiSinhs = [thisinh1, thisinh2, thisinh3, thisinh4, thisinh5]
  end

  def themThiSinh(n)
    for i in 1..n
      print "Nhap thi sinh thu ", i, "\n"
      nhapThongTin
    end
  end

  def nhapThongTin
    print "Nhap so bao danh: "
    sbd = gets.chomp
    print "Nhap ho ten: "
    hoten = gets
    print "Nhap dia chi:"
    diachi = gets
    print "Nhap muc uu tien: "
    uutien = gets
    print "1.Khoi A  2.Khoi B  3.Khoi C  "
    khoi = gets.chomp.to_i

    case khoi
    when 1
      print "Nhap diem Toan - Ly - Hoa: "
      toan = gets.chomp.to_f
      ly = gets.chomp.to_f
      hoa = gets.chomp.to_f

      thisinh = KhoiA.new(sbd, hoten, diachi, uutien, khoi, toan, ly, hoa)
      thiSinhs.push(thisinh)
    when 2
      print "Nhap diem Toan - Hoa - Sinh: "
      toan = gets.chomp.to_f
      hoa = gets.chomp.to_f
      sinh = gets.chomp.to_f

      thisinh = KhoiB.new(sbd, hoten, diachi, uutien, khoi, toan, hoa, sinh)
      thiSinhs.push(thisinh)
    when 3
      print "Nhap diem Van - Su - Dia: "
      van = gets.chomp.to_f
      su = gets.chomp.to_f
      dia = gets.chomp.to_f

      thisinh = KhoiC.new(sbd, hoten, diachi, uutien, khoi, van, su, dia)
      thiSinhs.push(thisinh)
    end
  end

  def timKiem(sbd)
    thiSinhs.each do |val|
      if val.SBD == sbd
        val.show
      end
    end
  end

  def show
    puts "\nDANH SACH THI SINH"
    thiSinhs.each do |val|
      val.show
      puts "\n----------------"
    end
  end
end

TuyenSinh = Tuyensinh.new()
choose = 1
while choose < 4 && choose > 0

  puts "\n1. Thêm thi sinh"
  puts "2. Hiển thị thông tin thi sinh"
  puts "3. Tìm kiếm theo so bao danh"
  puts "4. Thoát"

  print "Lựa chọn của bạn: "
  choose = gets.chomp.to_i

  system("cls")

  case choose
  when 1
    system("cls")
    print "Số thi sinh cần thêm: "
    n = gets.chomp.to_i
    TuyenSinh.themThiSinh(n)
  when 2
    system("cls")
    TuyenSinh.show
  when 3
    system("cls")
    print "Nhap so bao danh : "
    sbd = gets.chomp
    TuyenSinh.timKiem(sbd)
  end
end


