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


# 問題：文字列no pain no gainに出てくる単語の個数を数えて、ハッシュで表現する
texts = 'no pain no gain'
def count_string(texts)
  hash = Hash.new(0)
  string.split(' ').each { |word| hash[word] += 1}
  puts hash
end
count_string(texts)