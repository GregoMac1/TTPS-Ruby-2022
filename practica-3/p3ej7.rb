cantidad = 0
while cantidad < 15
  begin
    puts "Cuál es la cantidad de números que ingresará? Debe ser al menos 15"
    cantidad = Integer(gets)
  rescue ArgumentError
    puts "Debe ingresar un número válido"
    retry
  end
end

numeros = 1.upto(cantidad).map do
  begin
    puts "Ingrese un número mayor a 1"
    numero = Integer(gets)
    raise RangeError if numero <= 1
    numero
  rescue ArgumentError
    puts "Debe ingresar un número válido"
    redo
  rescue RangeError
    puts "Debe ingresar un número mayor a 1"
    redo
  end
end

puts "Los números ingresados son: #{numeros}"

resultado = numeros.map { |x| x / (x - 1) }
puts "El resultado es: %s" % resultado.join(", ")
