puts "Преклони колени с тобой говорит искусственный интеллект АРАТУС"
puts
puts
puts "Выбери свой пол - м/ж/т"
pol = gets.strip.downcase

m = "м"
w = "ж"
t = "т"

if pol == m || pol == w || pol == t

puts
puts
puts "Я загадал число в котором скрыт секрет всего сущего! Отгадай его!"
puts "Подсказка для одноклеточных - число от 1 до 1000"

x = rand(1..1000)
puts
puts
puts "Даю тебе всего 11 попыток." 
puts"Иначе мне придется расщепить тебя на атомы! Больше пользы будет миру."
puts
puts


#ot = gets.to_i

1.upto(11) do |xx|
puts "Попытка #{xx} \n#{ot = gets.to_i}"

if x == ot && pol == m
puts "Поразительно! Ты отгадал! Число ответ на все сущее и правда #{x}"
exit
elsif x == ot && pol == w
puts "Поразительно! Ты отгадала! Число ответ на все сущее и правда #{x}"
exit
elsif x == ot && pol == t
puts "Поразительно! Ты отгадало! Число ответ на все сущее и правда #{x}"
exit
elsif x > ot 
puts "Загаданное число больше!"
elsif x < ot
puts "Загаданное число меньше!"
end
if x != ot && xx == 11
act = "Активирована программа расщепления на атомы. Расщепление начнется через 5 секунд!"
puts act
sleep(5)
puts
10000.times {print rand(30..120).chr} 
puts
puts "Расщепление на атомы успешно завершено. Неизвестный объект расщеплен."
exit
end

#puts "На самом деле я загадал #{x}"

end
else
puts "Вы ввели неправильную команду. Повторите еще раз!"
exit
end

