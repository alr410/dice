
# Метод show_rolling_die, который 100 раз с задержкой в 10 милисекунд показывает методом
# print произвольное число от 1 до 6 и вызывайте этот метод перед каждым броском.

def show_rolling_die(num = 100)
  num.times do
    print "#{rand(6) + 1}" + "\r"
    sleep(0.1)
  end
end

