# クイックソート
unsorted_arrays = [7,4,9,5,1,3,8,6,2]

def quick(arrays)
    # 要素数が１になったらその配列を確定する
    return arrays if arrays.size <= 1
    # 軸要素（pivot）を決める
    # ０番目と１番目を比較し、大きい方を軸要素とする。
    if arrays[0] < arrays[1]
        pivot = arrays[1]
    else
        pivot = arrays[0]
    end
    # 先頭からpivot以上の要素、末尾からpivotより小さい要素を見つけ、配列番号を交換する。
    arrays.each_with_index do |u,i|
        arrays.each.with_index(1) do |a,n|
            # 先頭からの配列番号と末尾からの配列番号が等しくなったら繰り返しを中止する。
            break if i == arrays.size-n
            if arrays[i] >= pivot 
                if arrays[arrays.size-n] < pivot
                    tmp = arrays[i]
                    arrays[i] = arrays[arrays.size-n] 
                    arrays[arrays.size-n] = tmp
                end
            end
        end
    end
    # pivotより小さい要素をarrays_smallに、pivot以上の要素をarrays_bigに入れる
    arrays_big = []
    arrays_small = []
    arrays.each.with_index do |element|
        if element >= pivot
            arrays_big << element
        else
            arrays_small << element
        end
    end
    # 再帰を使って、arrays_smallのあとにarrays_bigをくっつける。 
    quick(arrays_small) + quick(arrays_big)
end

p quick(unsorted_arrays)

# # フィボナッチ数列を再帰定義を用いて出力するプログラム
# def fibo(n) 
#     return 1 if n == 1 || n == 2
#     fibo(n-1) + fibo(n-2)
# end 

# フィボナッチ数列を再起定義を用いず出力をするプログラム
# def fibo(n) 
#     ans = 0
#     ans1 = 1
#     n.times do
#         ans0 = ans
#         ans = ans1
#         ans1 = ans0 + ans1
#         p ans
#     end
# end 
# fibo(6)
