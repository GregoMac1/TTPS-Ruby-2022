def multiplos_de(numeros, tope)
  (1..tope).to_a.select{|x| numeros.all? {|num| x % num == 0}}.sum
end

puts multiplos_de([3, 5], 100)
puts multiplos_de([3, 5, 17, 28, 65], 100_000)
