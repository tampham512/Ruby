puts "Xin chao Pham Thanh Tam 1911505310251\n"

print "Nhap so bat ki: "
a = gets
puts "So vua nhap la : #{a} \n"

print "Nhap vao 2 so: "

b,c = gets.split

puts "Gia tri lon nhat trong 2 so: #{ b.to_f  > c.to_f  ? b : c}"

