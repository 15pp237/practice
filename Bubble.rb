#バブルソート

#適当に配列を作る。
numbers = [6,3,1,4,2,5]

#どんな並びでも(numbers.size)回繰り返せば要素が昇順になる。
#できれば昇順になった段階で繰り返しを終了させたい。
numbers.size.times do
    a = numbers.size
    numbers.each.with_index do |n,i|
        #(a-i)回で最初から最後までの要素を比較できる。比較したら終了とする。
        break if i == a-1
        #隣合う要素を比較し、要素の添え字が若い方の値が高ければ、その場所を入れ替える。
        if numbers[i] > numbers[i+1]
            numbers[i],numbers[i+1] = numbers[i+1],numbers[i]
        end
    end 
end
p numbers