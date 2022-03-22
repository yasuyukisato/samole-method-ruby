# 問題：文字列no pain no gainからnだけをカウントする
count = 0
texts = 'no pain no gain'
arr = texts.chars.reject{ |i| i == ' ' }
arr.each do |m|
    if m == 'n'
      count += 1
    end
end
p count