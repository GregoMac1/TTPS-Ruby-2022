def longitud(*args)
  args.map{|e| "#{e.to_s} --> #{e.to_s.length}"}
end

puts longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
