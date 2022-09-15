def notacion_hexadecimal(color)
  "#" + color.map{ |c| "%02X" % c }.join
end

def notacion_entera(color)
  color.map.with_index{ |c, index| c * (256 ** index) }.sum
end

puts notacion_hexadecimal([0, 128, 255])
puts notacion_entera([0, 128, 255])
