def multiplos_de_3_y_5(tope)
  (1..tope).to_a.select{|x| x % 3 == 0 && x % 5 == 0}.sum
end

puts multiplos_de_3_y_5(100)
