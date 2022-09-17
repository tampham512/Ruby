
class SinhVien
   
    def initialize(hoTen, lop)
        @hoTen = hoTen
        @lop = lop  
        @diemToan = 0
        @diemLy = 0
        @diemHoa = 0      
    end 

    
    def nhapDiem(diem, mon)
        case mon
            when "TOAN"
                @diemToan = diem
            when "LY"
                @diemLy = diem
            when "HOA"
                @diemHoa = diem
            else
                return
        end
    end

    def diemTrungBinh()
        sum = @diemToan + @diemHoa + @diemLy
        avg = sum.to_f / 3
        return avg
    end

    def thongTin()
        print "Tên: #{@hoTen} Lớp: #{@lop}\n"
        puts "Điểm Toán: #{@diemToan}"
        puts "Điểm Lý: #{@diemLy}"
        puts "Điểm Hóa: #{@diemHoa}"
    end
end

sv = SinhVien.new("Phạm Thanh Tâm ", "19T2")

sv.nhapDiem(2, "TOAN")
sv.nhapDiem(4, "LY")
sv.nhapDiem(3, "HOA")

sv.thongTin
puts "Điểm trung bình: #{sv.diemTrungBinh}"