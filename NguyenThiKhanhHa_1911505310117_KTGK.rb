class Phuongtien
  attr_accessor :ID117, :hangSanXuat117, :namSX117, :dongXe117, :giaBan117, :bienSo117, :mauXe117

  def initialize(id, hang, nam, dong, gia, bienso, mau)
    @ID117 = id
    @hangSanXuat117 = hang
    @dongXe117 = dong
    @namSX117 = nam
    @giaBan117 = gia
    @bienSo117 = bienso
    @mauXe117 = mau
  end

  def show
    puts "ID: #{@ID117} - Hang san xuat: #{@hangSanXuat117}"
    puts "Nam san xuat: #{@namSX117} - Dong xe: #{@dongXe117}"
    puts "Gia ban: #{@giaBan117} - Bien so: #{@bienSo117}"
    puts "Mau xe: #{@mauXe117}"
  end
end

class Oto < Phuongtien
  attr_accessor :soChoNgoi117, :kieuDongCo117, :nhienLieu117, :soTuiKhi117, :ngayDangKiem117

  def initialize(id, hang, nam, dong, gia, bienso, mau, chongoi, dongco, nhienlieu, tuikhi, ngaydk)
    super(id, hang, nam, dong, gia, bienso, mau)
    @soChoNgoi117 = chongoi
    @kieuDongCo117 = dongco
    @nhienLieu117 = nhienlieu
    @soTuiKhi117 = tuikhi
    @ngayDangKiem117 = ngaydk
  end

  def show
    puts "Loai phuong tien: Oto"
    super
    puts "So cho ngoi: #{@soChoNgoi117} - Kieu dong co: #{@kieuDongCo117}"
    puts "Nhien lieu: #{@nhienLieu117} - So tui khi: #{@soTuiKhi117}"
    puts "Ngay dang kiem: #{@ngayDangKiem117}"
  end
end

class Xemay < Phuongtien
  attr_accessor :congSuat117, :dungTichBX117

  def initialize(id, hang, nam, dong, gia, bienso, mau, congsuat, dungtich)
    super(id, hang, nam, dong, gia, bienso, mau)
    @congSuat117 = congsuat
    @dungTichBX117 = dungtich
  end

  def show
    puts "Loai phuong tien: Xe may"
    super
    puts "Cong suat: #{@congSuat117} - Dung tich binh xang: #{@dungTichBX117}"
  end
end

class Xetai < Phuongtien
  attr_accessor :trongTai117

  def initialize(id, hang, nam, dong, gia, bienso, mau,trongtai)
    super(id, hang, nam, dong, gia, bienso, mau)
    @trongTai117 = trongtai
  end

  def show
    puts "Loai phuong tien: Xe tai"
    super
    puts "Trong tai: #{@trongTai117} tan"
  end
end

class QLPTGT
  attr_accessor :listPT117

  def initialize
    pt1117 = Oto.new("001", "ABC", 1999, "XYZ", 50000000, "123456", "Den", 4, "A", "Xang", 2, "01/01/2000")
    pt2117 = Xemay.new("002", "ABC", 1999, "XYZ", 50000000, "123457", "Trang", 50, 50)
    pt3117 = Xetai.new("003", "ABC", 1999, "XYZ", 50000000, "123458", "Trang", 10)

    @listPT117 = [pt1117, pt2117, pt3117]
  end

  def nhapThongTin
    print "Chon loai phuong tien: 1.Oto  2.Xe may  3.Xe tai  "
    loaipt117 = gets.chomp.to_i
    print "Nhap ID: "
    id117 = gets.chomp
    print "Nhap hang san xuat: "
    hang117 = gets.chomp
    print "Nhap nam san xuat: "
    nam117 = gets.chomp.to_i
    print "Nhap dong xe: "
    dong117 = gets.chomp
    print "Nhap gia ban: "
    gia117 = gets.chomp.to_f
    print "Nhap bien so: "
    bienso117 = gets.chomp
    print "Nhap mau xe: "
    mau117 = gets.chomp

    case loaipt117
    when 1
      print "Nhap so cho ngoi: "
      socho117 = gets.chomp.to_i
      print "Nhap kieu dong co: "
      dongco117 = gets.chomp
      print "Chon nhien lieu: 1.Xang  2.Dau "
      nhienlieu117 = gets.chomp.to_i
      print "Nhap so tui khi: "
      tuikhi117 = gets.chomp.to_i
      print "Nhap ngay dang kiem: "
      ngaydk117 = gets.chomp

      nl117 = "Xang"
      if nhienlieu117 == 2
        nl117 = "Dau"
      end

      listPT117.push(Oto.new(id117, hang117, nam117, dong117, gia117, bienso117, mau117, socho117, dongco117, nl117, tuikhi117, ngaydk117))

    when 2
      print "Nhap cong suat: "
      congsuat117 = gets.chomp.to_i
      print "Nhap dung tich binh xang: "
      dungtich117 = gets.chomp.to_i

      listPT117.push(Xemay.new(id117, hang117, nam117, dong117, gia117, bienso117, mau117, congsuat117, dungtich117))

    when 3
      print "Nhap trong tai: "
      trongtai117 = gets.chomp.to_i

      listPT117.push(Xetai.new(id117, hang117, nam117, dong117, gia117, bienso117, mau117, trongtai117))
    end
  end

  def themPT(n)
    puts "===== Them Phuong Tien ====="
    for i in 1..n
      print "\nNhap phuong tien thu ", i, "\n"
      nhapThongTin
    end
  end

  def xoaPhuongTien(id)
    @listPT117.delete_if { |item| item.ID117.chomp.eql?id }
    print "Da xoa thanh cong!\n"
  end

  def timKiemBienSo(bienso)
    @listPT117.each do |val|
      if val.bienSo117 == bienso
        val.show
      end
    end
  end

  def timKiemHang(hang)
    i = 1
    @listPT117.each do |val|
      if val.hangSanXuat117 == hang
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end

  def timKiemMau(mau)
    i = 1
    @listPT117.each do |val|
      if val.mauXe117 == mau
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end

  def tiemKiem(hang, mau)
    puts "====== KET QUA TIM KIEM ======"
    i = 1
    @listPT117.each do |val|
      if val.mauXe117 == mau && val.hangSanXuat117 == hang
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end

  def show
    i = 1
    puts "DANH SACH PHUONG TIEN GIAO THONG"
    listPT117.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n----------------"
      i += 1
    end
  end
end

PTGT117 = QLPTGT.new

choose117 = 1
while choose117 < 5 && choose117 > 0

  puts "\n=========== Nguyen Thi Khanh Ha - 1911505310117 ============"
  puts "1. Them phuong tien"
  puts "2. Danh sach phuong tien"
  puts "3. Xoa phuong tien"
  puts "4. Tim kiem phuong tien"
  puts "5. Thoat"

  print "Lua chon cua ban: "
  choose117 = gets.chomp.to_i

  system("cls")

  case choose117
  when 1
    system("cls")
    print "So phuong tien can them: "
    n117 = gets.chomp.to_i
    PTGT117.themPT(n117)
    PTGT117.show
  when 2
    system("cls")
    PTGT117.show
  when 3
    system("cls")
    print "Nhap ID phuong tien muon xoa: "
    id117 = gets.chomp
    PTGT117.xoaPhuongTien(id117)
    PTGT117.show
  when 4
    print "Tim kiem theo 1.Hang xan suat  2.Mau xe  3.Bien so  4.Nang cao  "
    luachon117 = gets.chomp.to_i

    case luachon117
    when 1
      print "Nhap hang san xuat: "
      dieukien117 = gets.chomp
      PTGT117.timKiemHang(dieukien117)
    when 2
      print "Nhap mau xe: "
      dieukien117 = gets.chomp
      PTGT117.timKiemMau(dieukien117)
    when 3
      print "Nhap bien so: "
      dieukien117 = gets.chomp
      PTGT117.timKiemBienSo(dieukien117)
    when 4
      print "Nhap hang san xuat: "
      dieukien1117 = gets.chomp
      print "Nhap mau xe: "
      dieukien2117 = gets.chomp
      PTGT117.tiemKiem(dieukien1117, dieukien2117)
    end
  end
end
