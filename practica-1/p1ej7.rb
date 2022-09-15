def contar(frase, palabra)
  frase.downcase.scan(/#{palabra.downcase}/).length
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
