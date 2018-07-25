# Dados los siguientes array:
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

# Generar un hash que contenga los meses como llave y las ventas como valor:
print meses.zip(ventas)
print "\n\n"
mv = meses.zip(ventas).to_h
print mv
print "\n\n"
# En base al hash generado:
# 1.  Invertir las llaves y los valores del hash.
print vm = mv.invert
print "\n\n"
# 2.  Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)

puts vm[vm.keys.max]
