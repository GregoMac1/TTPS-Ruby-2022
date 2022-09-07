def notacion_hexadecimal(color)
  "%02X" % color[0] + "%02X" % color[1] + "%02X" % color[2]
end

def notacion_entera(color)
  color[0] + color[1]*256 + color[2]*256*256
end

puts notacion_hexadecimal([0, 128, 255])
puts notacion_entera([0, 128, 255])
