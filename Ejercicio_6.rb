# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.

restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }
print restaurant_menu
print "\n\n"
# 1. Obtener el plato mas caro.
mas_caro = restaurant_menu.max_by { |llave, valor| valor }
print mas_caro
print "\n\n"
# 2. Obtener el plato mas barato.
mas_barato = restaurant_menu.min_by { |llave, valor| valor }
print mas_barato
print "\n\n"
# 3. Sacar el promedio del valor de los platos.
print restaurant_menu.values.sum / restaurant_menu.length
print "\n\n"
# 4. Crear un arreglo con solo los nombres de los platos.
arreglo_platos = restaurant_menu.keys.to_a
print arreglo_platos
print "\n\n"
# 5. Crear un arreglo con solo los valores de los platos.
arreglo_valores =  restaurant_menu.values.to_a
print arreglo_valores
print "\n\n"
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
each do |llave, valor|
  restaurant_menu[:valor] = valor * 1.19
end
print restaurant_menu
print "\n\n"
# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
