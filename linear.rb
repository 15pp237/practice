# 線形探索法
search = 8
numbers = [5,1,7,2,3,8,4]

numbers.each.with_index(1) do |num,n|
    next if num != search
    puts "#{n}番目に#{search}がある。"
end