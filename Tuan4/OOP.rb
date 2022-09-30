class CanBo 
    attr_accessor :name_251, :age_251, :gender_251, :address_251
    def initialize(name_251, age_251, gender_251, address_251)
        @name_251 = name_251
        @age_251 = age_251  
        @gender_251 = gender_251
        @address_251 = address_251      
    end 
    def ThongTin()
        print "Tên: #{@name_251} "
        print "Tuổi: #{@age_251} "
        print "Giới tính: #{@gender_251} "
        print "Địa chỉ: #{@address_251} "
    end
end

class CongNhan < CanBo
    def initialize(name_251, age_251, gender_251, address_251, level_251)
        super(name_251, age_251, gender_251, address_251)
        @level_251 = level_251
    end 
    def ThongTin()
        super()
        print "Bậc: #{@level_251} "
    end
end

class KySu < CanBo
    def initialize(name_251, age_251, gender_251, address_251, trainingIndustry_251)
        super(name_251, age_251, gender_251, address_251)
        @trainingIndustry_251 = trainingIndustry_251
    end 
    def ThongTin()
        super()
        print "Ngành đào tạo: #{@trainingIndustry_251} "
    end
end

class NhaVien < CanBo
    def initialize(name_251, age_251, gender_251, address_251, job_251)
        super(name_251, age_251, gender_251, address_251)
        @job_251 = job_251
    end 
    def ThongTin()
        super()
        print "Công việc: #{@job_251} "
    end
end

class QLCB
    def initialize()
        @canBo_251 = []
    end
    def ThemMoi(cb)
        @canBo_251 << cb_251
    end
    
    def TimKiem(ten_251)
        rs_251 = @canBo_251.select{|cb_251| cb_251 if cb_251.name_251.upcase.include? ten.upcase}
        return rs_251
    end

    def HienThi()
        @canBo.each do |cb_251|
            puts cb_251.ThongTin()
        end
    end
end

ql_251 = QLCB.new
while true do
    puts "Quản lý cán bộ"
    puts "1: Thêm mới cán bộ"
    puts "2: Tìm kiếm cán bộ theo tên"
    puts "3: Hiển thị thông tin cán bộ"
    puts "4: Thoát"
    print "Chọn: "
    c_251= gets.to_i
    case c_251
        when 1
            puts "1: Thêm mới kỹ sư"
            puts "2: Thêm mới công nhân"
            puts "3: Thêm mới nhân viên"
            chon_251 = gets.to_i
            case chon_251
                when 1
                    print "Nhập tên cán bộ: "
                    name_251 = gets
                    print "Nhập tuổi cán bộ: "
                    age_251 = gets
                    print "Nhập giới tính cán bộ: "
                    gender_251 = gets
                    print "Nhập địa chỉ cán bộ: "
                    address_251 = gets
                    print "Nhập ngành đào tạo: "
                    trainingIndustry_251 = gets
                    ks = KySu.new(name_251, age_251, gender_251, address_251, trainingIndustry_251)
                    ql_251.ThemMoi(ks)
                    
                when 2
                    print "Nhập tên cán bộ: "
                    name_251 = gets
                    print "Nhập tuổi cán bộ: "
                    age_251 = gets
                    print "Nhập giới tính cán bộ: "
                    gender_251 = gets
                    print "Nhập địa chỉ cán bộ: "
                    address_251 = gets
                    print "Nhập bậc cán bộ: "
                    level_251 = gets
                    cn = CongNhan.new(name_251, age_251, gender_251, address_251, level_251)
                    ql_251.ThemMoi(cn)
                when 3
                    print "Nhập tên cán bộ: "
                    name_251 = gets
                    print "Nhập tuổi cán bộ: "
                    age_251 = gets
                    print "Nhập giới tính cán bộ: "
                    gender_251 = gets
                    print "Nhập địa chỉ cán bộ: "
                    address_251 = gets
                    print "Nhập công việc: "
                    job_251 = gets
                    nv = NhaVien.new(name_251, age_251, gender_251, address_251, job_251)
                    ql_251.ThemMoi(nv)
            end
        when 2
            puts "Nhập tên cán bộ cần tìm: "
            name_251 = gets
            rs_251 = ql_251.TimKiem(name_251)
            rs_251.each do |cb_251|
                puts cb_251.ThongTin()
            end
        when 3
            ql_251.HienThi()
        when 4
            puts "Thoat"
            break
        else
            puts "Không hợp lệ"
    end
end

