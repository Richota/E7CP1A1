# Agregar el string z con el valor 3.
# - Cambiar el valor de x por 5.
# - Eliminar la clave y.
# - Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
# - Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
h = {:x => 1,:y => 2}
h[:z] = 3
print h
print "\n"
h[:x] = 5
print h
print "\n"

h.delete(:y)
print h
print "\n"

puts 'yeeah' if h.key?(:z)

puts h.invert
