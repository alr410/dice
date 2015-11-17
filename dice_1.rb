#Пусть кубик «вращается» во время броска: сделайте так,
# чтобы перед тем, как вывести произвольное число от 1 до 6,
# программа бы быстро отображала несколько сменяющих друг друга
# произвольных чисел — «граней кубика».


if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключим метод show_rolling_die
require_relative "show_rolling_die.rb"
current_path = File.dirname(__FILE__)

# Спросим у игрока сколько раз кинуть кубик
num = 0

while (num == 0 || num == nil)
  puts "Сколько раз кинуть кубик от 1 до 6?"
  num = STDIN.gets.chomp.to_i
end

# Покажем игроку прoизвольное количество кубиков от 1 до 6 "num" раз,
# если число >= 1 и <= 6, также подсчитаем сумму выбрашенных кубиков
sum = 0
num_cube = 0

if num <= 6 && num >= 1
  num.times do
    show_rolling_die
    num_cube = rand(7)
    sum += num_cube
    puts "#{num_cube}"
  end
else
  abort "Число должно быть от 1 до 6!!!"
end

puts "Ваша сумма выбрашенных кубиков = #{sum}"





