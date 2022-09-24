class Man 
    def initialize(name, gender, haircolor, height, weight, phone)
        @name = name
        @gender = gender  
        @haircolor = haircolor
        @height = height      
        @weight = weight
        @phone = phone
    end 
    def thongTin()
        print "Tên: #{@name} "
    end
end

class Student < Man
    def initialize(name, gender, haircolor, height, weight, phone, shcool, studentId, grade1, grade2, grade3)
        super(name, gender, haircolor, height, weight, phone)
        @shcool = shcool
        @studentId = studentId  
        @grade1 = grade1
        @grade2 = grade2      
        @grade3 = grade3
    end 
    def average
        sum = @grade1 + @grade2 + @grade3
        avg =  (sum.to_f / 3).round(2)
        return avg
    end
    def thongTin()
        super()
        print "Tên: #{@name} "
        print "Mã sinh viên: #{@studentId} "
        print "Điểm trung bình: #{average} "
    end
end

std1 = Student.new("Pham Thanh Tam", "Nam", "Đen", 1.67, 59, "0339045945", "DHSPKT-DHDN", "1911505310251", 1, 7, 9)
std2 = Student.new("Pham Thanh Tam 2", "Nam", "Đen", 1.89, 55, "0792920565", "DHSPKT-DHDN", "1911505310278",5, 9, 8)
std3 = Student.new("Pham Thanh Tam 3", "Nam", "Đen", 1.78, 54, "0792923422", "DHSPKT-DHDN", "1911505310246", 9, 9, 9)
std4 = Student.new("Pham Thanh Tam 4", "Nam", "Đen", 1.8, 60, "073434223", "DHSPKT-DHDN", "1911505310224", 7, 7, 10)

std = []
std << std1
std << std2
std << std3
std << std4
std = std.sort_by {|s| [-s.average]}
std.each do |s|
    puts s.thongTin
end
