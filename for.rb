#for 変数　in 配列やハッシュ、繰り返し処理、end
#繰り返し文。ある一定のルールに沿った処理をループさせること。
#"in"の後で繰り返し処理の回数が決まる。
#inの後のデータの塊の1つ1つを取り出して変数に代入して繰り返し処理を実行する。

#問題１、それぞれを−１した配列の中身を表示
numbers = [10,20,30]
for n in numbers
    puts (n-1)
end

#問題２、配列の中身を全部足す
num = [2,4,6,8]
sum = 0
for i in num
    sum += i
end
puts sum
#num.each do |n|   
# sum += num
# end   と同義

#問題３、偶数は1/2倍、奇数は2倍して合計する。
number = [7,4,6,3]
sums = 0

for a in number
    result = a.even? ? a/2 : a*2
    sums += result
    # if a%2 == 0
        # a = a/2
    # else
        # a = a*2
    # end
    # sums += a
    #「a/2」だけでなく「a=a/2」のようにしっかりと定義してあげる。
end
puts sums