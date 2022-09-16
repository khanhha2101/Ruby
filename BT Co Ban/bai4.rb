arr = []

puts 'nhap 3 so nguyen'
for i in 0..2
    print 'nhap so thu ', i+1, ' '
    arr[i] = gets.to_i
end

arr = arr.sort()

print "\ntang dan: "
for ptu in arr
    print ptu, ' '
end

print "\ngiam dan: "
i=2
loop do
    print arr[i], ' '
    i -= 1
    if i<0
        break
    end
end