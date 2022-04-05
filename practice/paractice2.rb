
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