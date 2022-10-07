# HỌ và tên: Phạm Thanh Tâm
# Mã sinh viên: 1911505310251
class PhuongTien_251
    attr_accessor :id_251, :hangsx_251, :namsx_251, :dongxe_251, :giaban_251, :bienso_251, :mauxe_251
    def initialize(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251)
        @id_251 = id_251
        @hangsx_251 = hangsx_251
        @namsx_251 = namsx_251
        @dongxe_251 = dongxe_251
        @giaban_251 = giaban_251
        @bienso_251 = bienso_251
        @mauxe_251 = mauxe_251
    end

    def ThongTin_251()
        puts "ID: #{@id_251}"
        puts "Hãng sản xuất: #{@hangsx_251}"
        puts "Năm sản xuất: #{@namsx_251}"
        puts "Dòng xe: #{@dongxe_251}"
        puts "Giá bán : #{@giaban_251}"
        puts "Biển số xe: #{@bienso_251}"
        puts "Màu xe: #{@mauxe_251}"
    end
end

class Oto_251 < PhuongTien_251
    attr_accessor :id_251, :hangsx_251, :namsx_251, :dongxe_251, :giaban_251, :bienso_251, :mauxe_251, :sochongoi_251, :kieudongco_251, :nhienlieu_251, :sotuikhi_251, :ngaydangkiem_251
    def initialize(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251, sochongoi_251, kieudongco_251, nhienlieu_251, sotuikhi_251, ngaydangkiem_251)
        super(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251)
        @sochongoi_251 = sochongoi_251
        @kieudongco_251 = kieudongco_251
        @nhienlieu_251 = nhienlieu_251
        @sotuikhi_251 = sotuikhi_251
        @sochongoi_251 = sochongoi_251
        @ngaydangkiem_251 = ngaydangkiem_251
    end

    def ThongTin_251()
        super()
        puts "Số chỗ ngồi: #{@sochongoi_251}"
        puts "Kiểu động cơ: #{@kieudongco_251}"
        puts "Nhiên liệu: #{@nhienlieu_251}"
        puts "Số túi khí : #{@sotuikhi_251}"
        puts "Số chỗ ngồi: #{@sochongoi_251}"
        puts "Ngày đăng kiểm: #{@ngaydangkiem_251}"
    end
end

class XeMay_251 < PhuongTien_251
    attr_accessor :id_251, :hangsx_251, :namsx_251, :dongxe_251, :giaban_251, :bienso_251, :mauxe_251, :congsuat_251, :dungtich_251
    def initialize(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251, congsuat_251, dungtich_251)
        super(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251)
        @congsuat_251 = congsuat_251
        @dungtich_251 = dungtich_251
    end

    def ThongTin_251()
        super()
        puts "Công suất: #{@congsuat_251}"
        puts "Dung tích bình xăng: #{@dungtich_251}"
    end
end

class Xetai_251 < PhuongTien_251
    attr_accessor :id_251, :hangsx_251, :namsx_251, :dongxe_251, :giaban_251, :bienso_251, :mauxe_251, :trongtai_251
    def initialize(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251, trongtai_251)
        super(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251)
        @trongtai_251 = trongtai_251
    end

    def ThongTin_251()
        super()
        puts "Trọng tải: #{@trongtai_251}"
    end
end

class QLPTGT_251
    attr_accessor :phuongtien_251
    def initialize
        @phuongtien_251 = []
    end

    def Them_251(pt_251)
        @phuongtien_251 << pt_251
    end

    def Xoa_251(id_251)
        @phuongtien_251.each do |pt|
            if pt.id_251 == id_251
                @phuongtien_251.delete(pt)
                return true
            end
        end
        return false
    end
    def TimKiem_251(search,idCase)
        case idCase
            when 1
                return rs_251 = @phuongtien_251.select{|pt_251| pt_251 if pt_251.hangsx_251.upcase.include? search.upcase}
            when 2
                return rs_251 = @phuongtien_251.select{|pt_251| pt_251 if pt_251.mauxe_251.upcase.include? search.upcase}
            when 3
                return rs_251 = @phuongtien_251.select{|pt_251| pt_251 if pt_251.bienso_251.upcase.include? search.upcase}
            end
    end

    def HienThi_251()
        @phuongtien_251.each do |pt_251|
            puts pt_251.ThongTin_251()
        end
    end
end
ql_251 = QLPTGT_251.new
while true do
    puts "Quản lý phương tiện giao thông"
    puts "1: Thêm mới phương tiện"
    puts "2: Tìm kiếm phương tiện"
    puts "3: Xóa phương tiện theo ID"
    puts "4: Thoát"
    print "Chọn: "
    c_251= gets.to_i
    case c_251
        when 1
            puts "1: Thêm mới ô tô"
            puts "2: Thêm mới xe máy"
            puts "3: Thêm mới xe tải"
            chon_251 = gets.to_i
            case chon_251
                when 1
                    print "Nhập Id: "
                    id_251 = gets
                    print "Nhập Hãng Sản Xuất: "
                    hangsx_251 = gets
                    print "Nhập Năm Sản Xuất: "
                    namsx_251 = gets
                    print "Nhập Dòng Xe: "
                    dongxe_251 = gets
                    print "Nhập Giá Bán: "
                    giaban_251 = gets
                    print "Nhập Biển Số: "
                    bienso_251 = gets
                    print "Nhập Màu Xe: "
                    mauxe_251 = gets
                    print "Nhập Số Chỗ Ngồi: "
                    sochongoi_251 = gets
                    print "Nhập Kiểu Động Cơ: "
                    kieudongco_251 = gets
                    print "Nhập Nhiên Liệu: "
                    nhienlieu_251 = gets
                    print "Nhập Số Túi Khí: "
                    sotuikhi_251 = gets
                    print "Nhập Số Chỗ Ngồi: "
                    sochongoi_251 = gets
                    print "Nhập Ngày Đăng Kiểm: "
                    ngaydangkiem_251 = gets

                    oto_new = Oto_251.new(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251, sochongoi_251, kieudongco_251, nhienlieu_251, sotuikhi_251, ngaydangkiem_251)
                    ql_251.Them_251(oto_new)
                    
                when 2
                    print "Nhập Id: "
                    id_251 = gets
                    print "Nhập Hãng Sản Xuất: "
                    hangsx_251 = gets
                    print "Nhập Năm Sản Xuất: "
                    namsx_251 = gets
                    print "Nhập Dòng Xe: "
                    dongxe_251 = gets
                    print "Nhập Giá Bán: "
                    giaban_251 = gets
                    print "Nhập Biển Số: "
                    bienso_251 = gets
                    print "Nhập Màu Xe: "
                    mauxe_251 = gets
                    print "Nhập Công Suất: "
                    congsuat_251 = gets
                    print "Nhập Dung tích: "
                    dungtich_251 = gets
                    ngaydangkiem_251 = gets
                    xeMay_new = XeMay_251.new(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251, congsuat_251, dungtich_251)
                    ql_251.Them_251(xeMay_new)
                    ql_251.HienThi_251()
                when 3
                    print "Nhập Id: "
                    id_251 = gets
                    print "Nhập Hãng Sản Xuất: "
                    hangsx_251 = gets
                    print "Nhập Năm Sản Xuất: "
                    namsx_251 = gets
                    print "Nhập Dòng Xe: "
                    dongxe_251 = gets
                    print "Nhập Giá Bán: "
                    giaban_251 = gets
                    print "Nhập Biển Số: "
                    bienso_251 = gets
                    print "Nhập Màu Xe: "
                    mauxe_251 = gets
                    print "Nhập Trọng Tải: "
                    trongtai_251 = gets
                    xeTai_new = Xetai_251.new(id_251, hangsx_251, namsx_251, dongxe_251, giaban_251, bienso_251, mauxe_251, trongtai_251)
                    ql_251.Them_251(xeTai_new)
            end
        ql_251.HienThi_251()
          

        when 2
            puts "1: Tìm Kiếm Theo Hãng Sản Suất"
            puts "2: Tìm Kiếm Theo Màu"
            puts "3: Tìm Kiêm Theo Biển Số"
            chon_251 = gets.to_i
            case chon_251
                when 1
                    print "Nhập Hãng Cần Tìm Kiếm: "
                    hang_input_251 = gets
                    rs_251 = ql_251.TimKiem_251(hang_input_251,chon_251)
                    rs_251.each do |pl_251|
                        puts pl_251.ThongTin_251()
                    end
                when 2
                    print "Nhập Màu Cần Tìm Kiếm: "
                    mau_input_251 = gets
                    rs_251 = ql_251.TimKiem_251(mau_input_251,chon_251)
                    rs_251.each do |pl_251|
                        puts pl_251.ThongTin_251()
                    end
                when 3
                    print "Nhập Biển Số Cần Tìm Kiếm: "
                    bienso_input_251 = gets
                    rs_251 = ql_251.TimKiem_251(bienso_input_251,chon_251)
                    rs_251.each do |pl_251|
                        puts pl_251.ThongTin_251()
                    end
            end
        when 3
            puts "Nhập Id Xe Cần Xóa: "
            idXoa_251 = gets
            rs_251 = ql_251.Xoa_251(idXoa_251)
            if(rs_251)
                puts "Xóa Thành Công: "
            else
                puts "Xóa Thất Bại: "
            end
        when 4
            puts "Thoat"
            break
        else
            puts "Không hợp lệ"
    end
end
