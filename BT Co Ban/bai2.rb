puts "nhap 3 canh cua tam giac"
print "canh 1 :"
canh1 = gets.to_i
print "canh 2 :"
canh2 = gets.to_i
print "canh 3 :"
canh3 = gets.to_i

if (canh1 + canh2 > canh3 && canh1 + canh3 > canh2 && canh2 + canh3 > canh1)
    chuvi = canh1 + canh2 + canh3

    P = (canh1 + canh2 + canh3)/2
    dientich = Math.sqrt(P*(P-canh1)*(P-canh2)*(P-canh3))

    print "\nchu vi : ", chuvi
    print "\ndien tich: ", dientich
else
    puts "khong phai tam giac"
end
