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


# 華氏を摂氏に変換するメソッドfahr_to_celsを定義せよ
  # 摂氏1度から摂氏100度まで1度きざみに華氏温度との対応を出力すること
  # 華氏（℉）＝ 摂氏（℃）×1.8 + 32
  # 摂氏（℃）=｛華氏（℉）－32｝/ 1.8
  def fahr_to_cels(fahrenheit)
    (fahrenheit - 32) / 1.8
  end
  1.upto(100){ |i| puts "華氏#{i}度に対応する摂氏は#{fahr_to_cels(i).floor(1).to_f}度" } # 24の場合24.0と表示させたいためto_fメソッドを使用


# sample.rbの容量（バイト数）を求めよ
  # できたらwcコマンドを使い容量が合っているかチェックすること
  # ターミナル → wc ファイル名でファイルサイズ表示
p file_size = File::Stat.new('./sample.rb').size


# sample.rbファイルの単語数を取得せよ
  # wcコマンドを使い単語数が合っているかチェックすること
  # wcコマンドのカウント方法に合わせる
  # wc -w sample.rbで単語数のみを確認できる

count = 0
hash = Hash.new
file = File.open('./sample.rb')
file.read.split(' ').each do |word|
  count += 1
end
p count


# (1)サイコロを降って出た目を返すメソッドdiceを定義せよ
  # サイコロには1〜6の数字がある
  # （もちろん）サイコロなのでランダムに値が返る
# (2)10個のサイコロを振って出た目の合計を返すメソッドdice10も定義せよ

def dice 
  rand(1..6) 
end

def total_dice 
  total = 0
  10.times do
      dice_num = rand(1..6)
      total += dice_num
  end
  return total
end


# 1~100までの整数が昇順に並ぶ配列aを作れ
  # a[0]は1、a[99]は100とする

def create_array(arr)
  1.upto(100).each do |n|
    arr.push(n)
  end
  return arr
end

array = Array.new()
create_array(array) # (1..100).to_aでもok


# 1〜100までの整数が昇順に並ぶ配列aryを作れ
# 配列aryの各要素を100倍した配列ary2を作れ

def ary 
  (1..100).to_a
end

def ary2(ary) 
  ary.map{ |i| i * 100 }
end

p ary2(ary)


# 1〜100の整数を含む配列aryから、1〜10、11〜20、21〜30、というように10個の要素を含む配列を10個取り出せ
def get_ary_block
  arr = (1..100).to_a
  result = []
  10.times do |m|
    result >> arr[m*10, 10] #arr[0, 3] → 0番から３個取得する
  end
end


# 数値からなる配列num1とnum2にたいして、それらの個々の要素を足し合わせた要素からなる配列を返すメソッドsum_arrayを定義せよ
  # 例
  # p sum_array([1, 2, 3],[4, 6, 8]) 
  # => [5, 8, 11]

  def sum_array(arr1, arr2)
    result = []
    arr1.zip(arr2) do |a, b|
        result << a + b
    end
    return result
  end
  sum_array([1, 2, 3],[4, 6, 8]) 


