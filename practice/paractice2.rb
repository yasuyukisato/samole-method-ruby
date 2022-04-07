
# 次のような動作をするメソッドmy_collectを定義せよ
  # a = [1,2,3,4,5]
  # a.collect { |item| item * 2 }
    # - 条件
    # Procを使うこと
    # 引数としてeachメソッドを持つオブジェクトを受け取り、各要素をブロックで処理する


  def my_collect(arg, &block)
    ary = []
    arg.each do |el|
      ary << block.call(el)
    end
  end

  a = [1,2,3,4,5]
  my_collect(a) { |item| item * 2 }


# Dateクラスを使って、今月の１日と月末の日付と曜日を求め、次のような形式でカレンダーを表示させる

  require 'date'

  head = Date.today.strftime('%B %Y') # 今日の月と西暦を取得
  year = Date.today.year
  month = Date.today.month
  first_wday = Date.new(year, month, 1).wday # 今月1日の曜日を取得(0~6)
  last_date = Date.new(year, month, -1).day # 今月の最終日を取得
  week = %w(Su Mo Tu We Th Fr Sa)


  p head.center(12) # 月と西暦中央寄せで出力
  p week.join(" ") # 曜日を出力

  count = 0
  (1..last_date).each do |date|
    print date.to_s.rjust(2) + ' ' # rjust(2) + ' ' で前後の空白をいれている 
      count += 1
      
      if count % 7 == 0
          print "\n"
      end
  end
# p '1'.rjust(2)