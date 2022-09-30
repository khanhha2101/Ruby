class Canbo
    attr_accessor :name, :tuoi, :gioitinh, :diachi
  
    def initialize(hoten, tuoi, gioitinh, diachi)
      @hoten = hoten
      @tuoi = tuoi
      @gioitinh = gioitinh
      @diachi = diachi
    end
  
      def show
        if gioitinh == 1
            gt = "Nam"
        else 
            if gioitinh == 2
                gt = "Nu"
            else
                gt = "Khac"
            end
        end

        print "\nHo ten: ", hoten
        print "\nGioi tinh: ", gt, " - Tuoi: ", tuoi
        print "\nDia chi: ", diachi
      end  
  end

class Congnhan < Canbo
    attr_accessor :bac

    def initialize(hoten, tuoi, gioitinh, diachi, bac)
      super(hoten, tuoi, gioitinh, diachi)
      @bac = bac
    end

    def show
      super
      print "\nBac: ", bac
    end
end

class Kysu < Canbo
    attr_accessor :nganhdt

    def initialize(hoten, tuoi, gioitinh, diachi, nganhdt)
      super(hoten, tuoi, gioitinh, diachi)
      @nganhdt = nganhdt
    end

    def show
      super
      print "\nNganh dao tao: ", nganhdt
    end
end

class Nhanvien < Canbo
    attr_accessor :congviec

    def initialize(hoten, tuoi, gioitinh, diachi, congviec)
      super(hoten, tuoi, gioitinh, diachi)
      @congviec = congviec
    end

    def show
      super
      print "\nCong viec: ", congviec
    end
end

class QLCB
    attr_accessor :canbos

    def initialize(canbo)
      @canbos = canbo
    end

    def them 
        print "Ho ten: "
        ht = gets
        print "Tuoin: "
        tuoi = gets
        print "Gioi tinh: 1.Nam  2.Nu  3.Khac"
        gt = gets.chomp.to_i
        print "Dia chi: "
        dc = gets
        print "Chuc vu: 1.Cong nhan  2.Ky su  3.Nhan vien"
        cv = gets.chomp.to_i

        if cv == 1
            print "Bac: "
            bac = gets
            canbo = new Congnhan(ht, tuoi, gt, dc, bac)
            canbos.unshift(canbo)
        else 
            if cv == 2
                print "Nganh dao tao: "
                nganh = gets
                canbo = new Kysu(ht, tuoi, gt, dc, nganh)
                canbos.unshift(canbo) 
            else
                print "Cong viec: "
                cviec = gets
                canbo = new Nhanvien(ht, tuoi, gt, dc, cviec)
                canbos.unshift(canbo) 
            end
        end
    end

    def show
        puts "DANH SACH CAN BO"
        canbo.each do |val|
          val.show
          puts "\n------"
        end
    end
end

dscanbo = []
qlcb = new QLCB(dscanbo)
qlcb.them
qlcb.show