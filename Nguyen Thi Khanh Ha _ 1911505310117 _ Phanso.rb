class Phanso
  attr_accessor :tu_117, :mau_117

  def initialize(tu, mau)
    @tu_117 = tu
    @mau_117 = mau
  end

  def + (other)
    if @mau_117 == other.mau_117
      tu_moi = @tu_117 + other.tu_117
      mau_moi = @mau_117
    else
      tu_moi = @tu_117 * other.mau_117 + other.tu_117 * @mau_117
      mau_moi = @mau_117 * other.mau_117
    end

    return rutGon(Phanso.new(tu_moi, mau_moi))
  end

  def - (other)
    if @mau_117 == other.mau_117
      tu_moi = @tu_117 - other.tu_117
      mau_moi = @mau_117
    else
      tu_moi = @tu_117 * other.mau_117 - other.tu_117 * @mau_117
      mau_moi = @mau_117 * other.mau_117
    end

    return rutGon(Phanso.new(tu_moi, mau_moi))
  end

  def * (other)
    tu_moi = @tu_117 * other.tu_117
    mau_moi = @mau_117 * other.mau_117

    return rutGon(Phanso.new(tu_moi, mau_moi))
  end

  def / (other)
    tu_moi = @tu_117 * other.mau_117
    mau_moi = @mau_117 * other.tu_117

    return rutGon(Phanso.new(tu_moi, mau_moi))
  end

  def show
    "#{tu_117} / #{mau_117}"
  end
end

def rutGon(ps)
  a = ps.tu_117.abs
  b = ps.mau_117.abs
  while a != b
    if(a > b)
      a-=b
    else
      b-=a
    end
  end
  tu_moi = ps.tu_117/a
  mau_moi = ps.mau_117/a

  return Phanso.new(tu_moi, mau_moi)
end

def cong(ps1, ps2)
  if ps1.mau_117 == ps2.mau_117
    tu_moi = ps1.tu + ps2.tu_117
    mau_moi = ps1.mau_117
  else
    tu_moi = ps1.tu_117 * ps2.mau_117 + ps2.tu_117 * ps1.mau_117
    mau_moi = ps1.mau_117 * ps2.mau_117
  end

  return rutGon(Phanso.new(tu_moi, mau_moi))
end

def tru(ps1, ps2)
  if ps1.mau_117 == ps2.mau_117
    tu_moi = ps1.tu_117 - ps2.tu_117
    mau_moi = ps1.mau_117
  else
    tu_moi = ps1.tu_117 * ps2.mau_117 - ps2.tu_117 * ps1.mau_117
    mau_moi = ps1.mau_117 * ps2.mau_117
  end

  return rutGon(Phanso.new(tu_moi, mau_moi))
end

def nhan(ps1, ps2)
  tu_moi = ps1.tu_117 * ps2.tu_117
  mau_moi = ps1.mau_117 * ps2.mau_117

  return rutGon(Phanso.new(tu_moi, mau_moi))
end

def chia(ps1, ps2)
  tu_moi = ps1.tu_117 * ps2.mau_117
  mau_moi = ps1.mau_117 * ps2.tu_117

  return rutGon(Phanso.new(tu_moi, mau_moi))
end



ps1_117 = Phanso.new(5,2)
ps2_117 = Phanso.new(3, 4)

puts "Tổng: " + (ps1_117 + ps2_117).show
puts "Hiệu: " + (ps1_117 - ps2_117).show
puts "Tích: " + (ps1_117 * ps2_117).show
puts "Thuong: " + (ps1_117 / ps2_117).show
