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

# 配列arrayの、後ろから1〜3番目の数字それぞれに対応する文字列を、用意されたハッシュから取り出して連結で表示せよ
def fetch_string(array)
  hash = {
    "0" => "---",
    "1" => "--x",
    "2" => "-w-",
    "3" =>  "-wx",
    "4" => "r--",
    "5" => "r-x",
    "6" => "rw-",
    "7" => "rwx"
  }
  strings = ""
  array[-3..-1].each { |m| strings += hash[m] }
  puts strings
end
  array = ["1", "2", "3", "4", "5", "6"]
  fetch_string(array)


# test_file.rbの行数を取得せよ
file = File.open('./test_file.rb', 'r')
if File.exists?(file)
  puts file.read.lines.count
  file.close
end