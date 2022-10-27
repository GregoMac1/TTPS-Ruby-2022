def procesar_archivo ruta, &bloque
  #begin
    File.open(ruta, 'r') do |f|
      while linea = f.gets
        yield linea #copilot. no sé si está bien
      end
    end
  #rescue FileNotFoundError no sé cuál es el error que tira

end

procesar_archivo('/tmp/datoss.txt') { | linea | Integer(linea) } #datos.txt ya está creado
