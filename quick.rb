# # クイックソート
numbers = [4,2,5,1,3,8,6,7]

# # 軸要素numの決定　
# # ・データの先頭の要素・ランダム・ランダム３つの中央値・左の２つの大きい方
# # 今回は左の大きい方を軸要素にするやり方で。
if numbers[0] < numbers[1]
    num = numbers[1]
else
    num = numbers[0]
end
p num

# # 先頭から軸要素以上、末尾から軸要素以下を探索。
numsmall = []
numbig = []
numbers.each_with_index do |number,n|
    if num <= number
        numbig << number
    elsif num > numbers[numbers.size-n-1]
        numsmall << numbers[numbers.size-n-1]
    end
end
p numsmall
p numbig
# 添え字nに縛られてしまう。
# 例えば要素数８の配列に対し、要素番号１番に軸要素よりも大きく配列内の交換に値する要素を発見した時、
# 後列かろの探索では要素番号６番だけを見てしまう。
# また、繰り返し処理の終了を
# n = number.size-n-1
# としてしまうと、前列からの探索と後列からの探索が交わる点ではあるが、必ず真ん中で交わってしまう。

# フィボナッチ数列の出力をするプログラム
def fibo(n) 
    ans = 0
    ans1 = 1
    n.times do
        ans0 = ans
        ans = ans1
        ans1 = ans0 + ans1
        p ans
    end
end 
fibo(6)
