class Nguoi
  attr_accessor :hoTen, :Tuoi, :ngheNghiep, :CMND

  def initialize(hoten, tuoi, nghenghiep, cmnd)
    @hoTen = hoten
    @Tuoi = tuoi
    @ngheNghiep = nghenghiep
    @CMND = cmnd
  end

  def show
    puts "Ho ten: #{@hoTen}"
    puts "Tuoi: #{@Tuoi}"
    puts "Nghe nghiep: #{@NgheNghiep}"
    puts "CMND: #{@CMND}"
  end
end

class Hogiadinh
  attr_accessor :soTV, :soNha, :listTV

  def initialize(sotv, sonha, listtv)
    @soNha = sonha
    @soTV = sotv
    @listTV = listtv
  end



  def show
    puts "So thanh vien: #{@soTV}"
    puts "So nha: #{@soNha}"
    puts "Thong tin ca nhan moi thanh vien:"
    listTV.each do |val|
      val.show
      puts "------------"
    end
  end
end

class Khupho
  attr_accessor :listHGD

  def initialize
    # nguoi1 = Nguoi.new("Khanh Ha1", 21, "Sinh vien", "123456")
    # nguoi2 = Nguoi.new("Khanh Ha2", 21, "Sinh vien", "123457")
    # nguoi3 = Nguoi.new("Khanh Ha3", 21, "Sinh vien", "123458")
    # nguoi4 = Nguoi.new("Khanh Ha4", 21, "Sinh vien", "123459")
    # nguoi5 = Nguoi.new("Khanh Ha5", 21, "Sinh vien", "123410")
    #
    # list1 = [nguoi1, nguoi2]
    # list2 = [nguoi3, nguoi4, nguoi5]
    #
    # hgd1 = Hogiadinh.new(2, "02 thanh son", list1)
    # hgd2 = Hogiadinh.new(3, "03 thanh son", list2)
    #
    # @listHGD = [hgd1, hgd2]
    @listHGD = []
  end

  def nhapThongtin
    print "Nhap so thanh vien: "
    sotv = gets.chomp.to_i
    print "Nhap so nha: "
    sonha = gets.chomp

    thanhviens = []
    for i in 1..sotv
      puts "Nhap thong tin thanh vien thu #{i}"
      print "Nhap ho ten: "
      hoten = gets.chomp
      print "Nhap tuoi: "
      tuoi = gets.chomp.to_i
      print "Nhap nghe nghiep: "
      nghe = gets.chomp
      print "Nhap CMND: "
      cmnd = gets.chomp

      thanhviens.push(Nguoi.new(hoten, tuoi, nghe, cmnd))
    end

    listHGD.push(Hogiadinh.new(sotv, sonha, thanhviens))
  end

  def themHGD(n)
    puts "===== Them Ho Gia Dinh ====="
    for i in 1..n
      print "Nhap ho gia dinh thu ", i, "\n"
      nhapThongtin
    end
  end

  def show
    i = 1
    puts "DANH SACH HO GIA DINH"
    listHGD.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n==========================="
      i += 1
    end
  end
end

KP = Khupho.new()
print "Nhap so ho dan can them: "
n = gets.chomp.to_i
KP.themHGD(n)
KP.show
