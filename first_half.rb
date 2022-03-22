# 問題：文字列no pain no gainからnだけをカウントする
count = 0
text = 'no pain no gain'
text.chars do |m|
    if m == 'n'
      count += 1
    end
end
p count