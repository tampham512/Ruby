#Pham Thanh Tam - 1911505310251

class PhanSo
    attr_accessor :tu_251, :mau_251
    def initialize(tu_251, mau_251)
        @tu_251 = tu_251
        @mau_251 = mau_251
    end
    def UCLN( a, b)
        if ( b == 0 )
              return a
        end
        return UCLN( b, a % b )
    end
    def RutGon( a, b)
        ucln = UCLN(a,b)
        if (ucln == 0)
            return 0
        end
        a = a / ucln
        b = b / ucln
        if(a==0 or b==1)
            return "#{a}"
        end
        return "#{a}/#{b}"
    end   

    def + (object)
        tu_251 = self.tu_251 * object.mau_251 + object.tu_251 * self.mau_251
        mau_251 = self.mau_251 * object.mau_251
        return RutGon(tu_251,mau_251)

    end

    def - (object)
        tu_251 = self.tu_251 * object.mau_251 - object.tu_251 * self.mau_251
        mau_251 = self.mau_251 * object.mau_251
        return RutGon(tu_251,mau_251)
    end

    def * (object)
        tu_251 = self.tu_251 * object.tu_251
        mau_251 = self.mau_251 * object.mau_251
        return RutGon(tu_251,mau_251)
    end

    def / (object)
        tu_251 = self.tu_251 * object.mau_251
        mau_251 = self.mau_251 * object.tu_251

        return RutGon(tu_251,mau_251)
    end
    
end

def Cong(ps1, ps2)
    tu_251 = ps1.tu_251 * ps2.mau_251 + ps2.tu_251 * ps1.mau_251
    mau_251 = ps1.mau_251 * ps2.mau_251
    ps = PhanSo.new(tu_251, mau_251)
    return ps
end

def Tru(ps1, ps2)
    tu_251 = ps1.tu_251 * ps2.mau_251 - ps2.tu_251 * ps1.mau_251
    mau_251 = ps1.mau_251 * ps2.mau_251
    ps = PhanSo.new(tu_251, mau_251)
    return ps
end

def Nhan(ps1, ps2)
    tu_251 = ps1.tu_251 * ps2.tu_251
    mau_251 = ps1.mau_251 * ps2.mau_251
    ps = PhanSo.new(tu_251, mau_251)
    return ps
end

def Chia(ps1, ps2)
    tu_251 = ps1.tu_251 * ps2.mau_251
    mau_251 = ps1.mau_251 * ps2.tu_251
    ps = PhanSo.new(tu_251, mau_251)
    return ps
end

puts "Nhap phan so 1: "
print "Nhap tu so 1: "
tu1_251 = gets.to_i
mau1_251 = 0
loop do
    print "Nhap mau so 1: "
    mau1_251 = gets.to_i
    if mau1_251 != 0
        break
    end
end
ps1 = PhanSo.new(tu1_251, mau1_251)

puts "Nhap phan so 2: "
print "Nhap tu so 2: "
tu2_251 = gets.to_i
mau2_251 = 0
loop do
    print "Nhap mau so 2: "
    mau2_251 = gets.to_i
    if mau2_251 != 0
        break
    end
end

ps2 = PhanSo.new(tu2_251, mau2_251)

tong = Cong(ps1, ps2)
hieu = Tru(ps1, ps2)
tich = Nhan(ps1, ps2)
thuong = Chia(ps1, ps2)

puts "Bai 1:" 
puts "Tong 2 phan so: #{ps1.RutGon(tong.tu_251,tong.mau_251)}"
puts "Hieu 2 phan so: #{ps1.RutGon(hieu.tu_251,hieu.mau_251)}"
puts "Tich 2 phan so: #{ps1.RutGon(tich.tu_251,tich.mau_251)}"
puts "Thuong 2 phan so: #{ps1.RutGon(thuong.tu_251,thuong.mau_251)}"

puts "Bai 2:"
puts "Tong 2 phan so: #{(ps1+ps2)}"
puts "Hieu 2 phan so: #{(ps1-ps2)}"
puts "Tich 2 phan so: #{(ps1*ps2)}"
puts "Thuong 2 phan so: #{(ps1/ps2)}"