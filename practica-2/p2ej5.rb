def cuanto_falta?(tiempo=Time.new(
  Time.now.year, Time.now.month, Time.now.day, 0, 0, 0
))
  (Time.new(2032, 12, 31, 23, 59, 59) - tiempo) / 60
end

puts cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
puts cuanto_falta?
