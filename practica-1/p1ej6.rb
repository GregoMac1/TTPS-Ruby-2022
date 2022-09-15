def tiempo_en_palabras(tiempo)
  tiempo.min <= 34 
    ? texto = "Son las #{tiempo.hour} "
    : texto = "Son las #{tiempo.hour + 1} "
  
  case tiempo.min
  when 0..10
    texto += "en punto"
  when 11..20
    texto += "y cuarto"
  when 21..34
    texto += "y media"
  when 35..44
    texto += "menos veinticinco"
  when 45..55
    texto += "menos cuarto"
  when 56..59
    texto = "Casi son las #{tiempo.hour + 1}"
  end

  puts texto
end

puts tiempo_en_palabras(Time.new(2022, 10, 21, 10, 1))
puts tiempo_en_palabras(Time.new(2022, 10, 21, 9, 33))
puts tiempo_en_palabras(Time.new(2022, 10, 21, 8, 45))
puts tiempo_en_palabras(Time.new(2022, 10, 21, 6, 58))
puts tiempo_en_palabras(Time.new(2022, 10, 21, 0, 58))
