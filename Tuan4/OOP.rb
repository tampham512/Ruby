class CanBo 
    attr_accessor :name, :age, :gender, :address
    def initialize(name, age, gender, address)
        @name = name
        @age = age  
        @gender = gender
        @address = address      
    end 
    def ThongTin()
        print "Tên: #{@name} "
        print "Tuổi: #{@age} "
        print "Giới tính: #{@gender} "
        print "Địa chỉ: #{@address} "
    end
end

class CongNhan < CanBo
    def initialize(name, age, gender, address, level)
        super(name, age, gender, address)
        @level = level
    end 
    def ThongTin()
        super()
        print "Bậc: #{@level} "
    end
end

class KySu < CanBo
    def initialize(name, age, gender, address, trainingIndustry)
        super(name, age, gender, address)
        @trainingIndustry = trainingIndustry
    end 
    def ThongTin()
        super()
        print "Ngành đào tạo: #{@trainingIndustry} "
    end
end

class NhaVien < CanBo
    def initialize(name, age, gender, address, job)
        super(name, age, gender, address)
        @job = job
    end 
    def ThongTin()
        super()
        print "Công việc: #{@job} "
    end
end

class QLCB
    def initialize()
        @canBo = []
    end
    def ThemMoi(cb)
        @canBo << cb
    end
    
    def TimKiem(ten)
        rs = @canBo.select{|cb| cb if cb.name.upcase.include? ten.upcase}
        return rs
    end

    def HienThi()
        @canBo.each do |cb|
            puts cb.ThongTin()
        end
    end
end

ql = QLCB.new
while true do
    puts "Quản lý cán bộ"
    puts "1: Thêm mới cán bộ"
    puts "2: Tìm kiếm cán bộ theo tên"
    puts "3: Hiển thị thông tin cán bộ"
    puts "4: Thoát"
    print "Chọn: "
    c = gets.to_i
    case c
        when 1
            puts "1: Thêm mới kỹ sư"
            puts "2: Thêm mới công nhân"
            puts "3: Thêm mới nhân viên"
            chon = gets.to_i
            case chon
                when 1
                    print "Nhập tên cán bộ: "
                    name = gets
                    print "Nhập tuổi cán bộ: "
                    age = gets
                    print "Nhập giới tính cán bộ: "
                    gender = gets
                    print "Nhập địa chỉ cán bộ: "
                    address = gets
                    print "Nhập ngành đào tạo: "
                    trainingIndustry = gets
                    ks = KySu.new(name, age, gender, address, trainingIndustry)
                    ql.ThemMoi(ks)
                    
                when 2
                    print "Nhập tên cán bộ: "
                    name = gets
                    print "Nhập tuổi cán bộ: "
                    age = gets
                    print "Nhập giới tính cán bộ: "
                    gender = gets
                    print "Nhập địa chỉ cán bộ: "
                    address = gets
                    print "Nhập bậc cán bộ: "
                    level = gets
                    cn = CongNhan.new(name, age, gender, address, level)
                    ql.ThemMoi(cn)
                when 3
                    print "Nhập tên cán bộ: "
                    name = gets
                    print "Nhập tuổi cán bộ: "
                    age = gets
                    print "Nhập giới tính cán bộ: "
                    gender = gets
                    print "Nhập địa chỉ cán bộ: "
                    address = gets
                    print "Nhập công việc: "
                    job = gets
                    nv = NhaVien.new(name, age, gender, address, job)
                    ql.ThemMoi(nv)
            end
        when 2
            puts "Nhập tên cán bộ cần tìm: "
            name = gets
            rs = ql.TimKiem(name)
            rs.each do |cb|
                puts cb.ThongTin()
            end
        when 3
            ql.HienThi()
        when 4
            puts "Thoat"
            break
        else
            puts "Không hợp lệ"
        # end
    end
end
# ks = KySu.new("a",10,"nam", "DN","CNTT")
# ql = QLCB.new
# ql.ThemMoi(ks)
# ql.HienThi()
