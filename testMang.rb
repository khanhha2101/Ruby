arr = [1, 2, 3, 4, 5, 6]

for i in 0..arr.length - 1
  if arr[i] == 2
    arr.delete_at(i)
  end
end

arr.each do |val|
  print val
end


