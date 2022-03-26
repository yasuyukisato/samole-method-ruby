# 問題：文字列no pain no gainからnだけをカウントする
count = 0
texts = 'no pain no gain'
arr = texts.chars.reject{ |i| i == ' ' } #空文字除去
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
  texts.split(' ').each { |word| hash[word] += 1}
  puts hash
end
count_string(texts)


# 問題：文字列no pain no gainの各文字を数えよ（nが何個、oが何個など）
texts = 'no pain no gain'
def count_string(texts)
  hash = Hash.new(0)
  separate_texts = texts.chars.reject{ |i| i == ' '}
  separate_texts.each { |word| hash[word] += 1}
  puts hash
end
count_string(texts)


# 摂氏温度を華氏温度に変換するcels_to_fahrメソッドを定義せよ
  # 摂氏１度上昇 = 華氏1.8℉上昇
  # 摂氏（℃）=｛華氏（℉）－32｝/ 1.8
  # 華氏（℉）＝ 摂氏（℃）×1.8 + 32
def cels_to_fahr(celsius)
  celsius * 1.8 + 32
end