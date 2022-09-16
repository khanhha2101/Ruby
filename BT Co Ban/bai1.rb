arr = []

print "Nhap do dai mang: "
n = gets.to_i

for i in 0..n-1
    print "nhap phan tu thu ", (i+1), ": "
    arr[i] = gets.to_i
end

sum = 0
for ptu in arr
    sum += ptu
end

avg = sum/arr.length() 

print "\ngia tri lon nhat ", arr.max
print "\ngia tri nho nhat ", arr.min
print "\ngia tri trung binh ", avg