class Tailieu
  attr_accessor :maTaiLieu, :tenNhaXuatBan, :soBanPhatHanh, :phanLoai

  def initialize(ma, nxb, bph, pl)
    @maTaiLieu = ma
    @tenNhaXuatBan = nxb
    @soBanPhatHanh = bph
    @phanLoai = pl
  end

  def show
    ploai = "Sach"
    if phanLoai == 2
      ploai = "Tap chi"
    end
    if phanLoai == 3
      pl = "Bao"
    end
    print "Ma tai lieu: ", maTaiLieu
    print "\nPhan loai: ", ploai
    print "\nTen nha xuat ban: ", tenNhaXuatBan
    print "\nSo ban phat hanh: ", soBanPhatHanh
  end
end

class Sach < Tailieu
  attr_accessor :tenTacGia, :soTrang

  def initialize(ma, nxb, bph, pl, tg, sotrang)
    super(ma, nxb, bph, pl)
    @tenTacGia = tg
    @soTrang = sotrang
  end

  def show
    super
    print "\nTen tac gia: ", tenTacGia, "\nSo trang: ", soTrang
  end
end

class Tapchi < Tailieu
  attr_accessor :soPhatHanh, :thangPhatHanh

  def initialize(ma, nxb, bph, pl, soph, thangph)
    super(ma, nxb, bph, pl)
    @soPhatHanh = soph
    @thangPhatHanh = thangph
  end

  def show
    super
    print "\nSo phat hanh: ", soPhatHanh, "\nThang phat hanh: ", thangPhatHanh
  end
end

class Bao < Tailieu
  attr_accessor :ngayPhatHanh

  def initialize(ma, nxb, bph, pl, ngayph)
    super(ma, nxb, bph, pl)
    @ngayPhatHanh = ngayph
  end

  def show
    super
    print "\nNgay phat hanh: ", ngayPhatHanh
  end
end

class QuanLySach
  attr_accessor :taiLieus

  def initialize()
    tailieu1 = Bao.new("ma1", "Kim Đồng", "1", 3, "1")
    tailieu2 = Tapchi.new("ma2", "Kim Đồng", "2", 2 , "1", "10/2022")
    tailieu3 = Sach.new("ma3", "Kim Đồng", "6", 1, "Khánh Hoạ", "122")
    tailieu4 = Bao.new("ma4", "Kim Đồng", "3", 3, "1")
    tailieu5 = Tapchi.new("ma5", "Kim Đồng", "4", 2 , "3", "11/2022")
    tailieu6 = Sach.new("ma6", "Kim Đồng", "9", 1, "Khánh Hoạ", "111")
    @taiLieus = [tailieu1, tailieu2, tailieu3, tailieu4, tailieu5, tailieu6]
    # @taiLieus = []
  end

  def nhapThongtin

    print "1. Sach  2.Tap chi  3.Bao  "
    phanloai = gets.chomp.to_i
    print "Nhap ma tai lieu: "
    ma = gets.chomp
    print "Nhap ten nha xuat ban: "
    nxb = gets
    print "Nhap so ban phat hanh: "
    sbph = gets

    case phanloai
    when 1
      print "Nhap ten tac gia: "
      tg = gets
      print "Nhap so trang: "
      sotrang = gets

      tailieu = Sach.new(ma, nxb, sbph, phanloai, tg, sotrang)
      taiLieus.push(tailieu)

    when 2
      print "Nhap so phat hanh: "
      soph = gets
      print "Nhap thang phat hanh: "
      thangph = gets

      tailieu = Tapchi.new(ma, nxb, sbph, phanloai, soph, thangph)
      taiLieus.push(tailieu)

    when 3
      print "Nhap ngay phat hanh: "
      ngayph = gets

      tailieu = Bao.new(ma, nxb, sbph, phanloai, ngayph)
      taiLieus.push(tailieu)
    end
  end

  def themTaiLieu(n)
    puts "===== Them Moi Tai Lieu ====="
    for i in 1..n
      print "Nhap tai lieu thu ", i, "\n"
      nhapThongtin
    end
  end

  def xoaTaiLieu(ma)
    taiLieus.delete_if { |item| item.maTaiLieu.chomp.eql?ma }
    print "Đã xoá thành công!"
  end

  def timKiem(phanloai)
    taiLieus.each do |val|
      if val.phanLoai == phanloai
        val.show
        puts "\n----------------"
      end
    end
  end

  def show
    if taiLieus
      i = 1
      puts "DANH SACH TAI LIEU"
      taiLieus.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    else
      print "Danh sach rong"
    end

  end
end
QLS = QuanLySach.new()

choose = 1
while choose < 5 && choose > 0

  puts "\n1. Thêm mới tài liệu"
  puts "2. Hiển thị thông tin tài liệu"
  puts "3. Xoá tài liệu"
  puts "4. Tìm kiếm tài liệu"
  puts "5. Thoát"

  print "Lựa chọn của bạn: "
  choose = gets.chomp.to_i

  system("cls")

  case choose
  when 1
    system("cls")
    print "Số tài liệu cần thêm: "
    n = gets.chomp.to_i
    QLS.themTaiLieu(n)
  when 2
    system("cls")
    QLS.show
  when 3
    system("cls")
    print "XOÁ TÀI LIỆU \nNhập mã tài liệu: "
    ma = gets.chomp
    QLS.xoaTaiLieu(ma)
  when 4
    system("cls")
    print "1. Sách  2. Tạp chí  3. Báo   : "
    phanloai = gets.chomp.to_i
    QLS.timKiem(phanloai)
  end
end
