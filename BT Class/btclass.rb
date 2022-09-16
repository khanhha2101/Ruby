class SinhVien
    attr_accessor :hoTen, :msv, :dToan, :dLy, :dHoa

    def initialize(hoten, ma, toan, ly, hoa)
        hoTen = hoten
        msv = ma
        dToan = toan
        dLy = ly
        dHoa = hoa
    end

    def diemTrungBinh
        (dToan + dLy + dHoa) / 3.0
    end

    def showThongTin
        dtb = diemTrungBinh
        print "ho ten: ", hoTen, "\nma sinh vien: ", msv, "\ndiem trung binh: ", dtb
    end
end

system("cls")

print "Nhap ho ten sinh vien: "
hoten = gets
print "Nhap ma sinh vien: "
masv = gets
print "Nhap diem toan: "
diemtoan = gets.chomp.to_f
print "Nhap diem ly: "
diemly = gets.chomp.to_f
print "Nhap diem hoa: "
diemhoa = gets.chomp.to_f

sv = SinhVien.new(hoten, masv, diemtoan, diemly, diemhoa)
puts "THONG TIN SINH VIEN"
sv.showThongTin