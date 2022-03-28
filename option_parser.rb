# ターミナルから-a,-l,-r,-alrのオプションを引き取り、それぞれのオプションで条件分岐をしてメソッドを設定せよ
# メソッドはputs '適当な文字列'でOK
# -alrに関しては-ralや-lraなどのように順番を変えても同じメソッドが動作すること

require "optparse"

def select_option
  options = ARGV.getopts('alr')
  puts options['a']
  if options['a'] && options['l'] && options['r']
    puts 'arlが選択されました'
  elsif options['a']
    puts 'aが選択されました'
  elsif options['l']
    puts 'lが選択されました'
  elsif options['r']
    puts 'rが選択されました'
  else
    puts 'nomal'
  end
end

select_option

# ターミナル → ファイル名 -aなどで実行