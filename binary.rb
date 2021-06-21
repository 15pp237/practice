#二分探索法

numbers = [2,3,4,6,9,10,14,15,16]
search = 9

# sizeが１の時１step,2=１,３=２,４=2,5=2,6=2,7=3,8=3,9=3,13=3,14=3,15=4,16=4...
# ２のn乗が(size+1)の時、n(整数部分)回繰り返せば探索できる。 
# つまり「n=log2(size+1)のfloor」回。
nlog = Math::log2(numbers.size+1).floor

nlog.times do
    # trueかfalseなら繰り返しを抜ける。
    break if numbers == true
    break if numbers == false
    # 繰り返される度に値が変化。
    a = numbers.size
    i = (a-1)/2
    #sizeが奇数か偶数かで中央値の取り方が変化。
        if a.odd?   
            # 値を見つけたらtrueに。
            if search == numbers[i]
                numbers = true
            # 中央値より小、最小の要素より大なら最小〜中央値までの配列。
            elsif search < numbers[i] && search >= numbers[0]
                numbers = numbers.select{|n| n < numbers[i]}
            # 中央値より大、最大の要素より小さいなら中央値〜最大までの配列。
            elsif search > numbers[i] && search <= numbers[a-1]
                numbers = numbers.select{|m| m > numbers[i]}
            # それ以外は配列外なのでfalse。
            else 
                numbers = false
            end
        else 
            # 中央値は平均を取らず、それぞれで比較。
            if search == numbers[a/2]
                numbers = true
            elsif  search == numbers[(a/2)-1]
                numbers = true
            elsif search < numbers[a/2-1] && search >= numbers[0]
                numbers = numbers.select{|l| l < numbers[a/2-1]}
            elsif search > numbers[a/2] && search <= numbers[a-1]
                numbers = numbers.select{|o| o > numbers[a/2]}
            else
                numbers = false
            end
        end
end
p numbers