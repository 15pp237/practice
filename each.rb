#eachメソッド。
#配列自身に繰り返せという命令を送る。配列の要素を最初から最後まで取り出す。
# 取り出した要素をどう扱うかはブロック次第。
# nはブロック定数。配列の要素が順番に入っていく。

# 問題１、配列を全て足す。
numbers = [1,2,3,4,5]
sum = 0
numbers.each do |n|
    sum += n
end
p sum

#eachメソッドでは何番目の要素を処理しているのか、ブロック内では判別できない。
# 繰り返し処理をしつつ処理している要素の添え字はも取得したい。
# each_with_methodを使う。第２引数に添え字を渡す。
fruits = ["apple","orange","melon"]
fruits.each_with_index do |fruit,i|
    puts "#{i}:#{fruit}"
end

# with_indexメソッドには引数を渡せないのでeach(.)になる
number = [3,2,1]
number.each.with_index(3) do |num,a|
    puts "#{a - 1}:#{num * 2}"
end