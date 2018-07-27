# Se tiene un hash con el inventario de un negocio de computadores.
inventario = { "Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6 }
opcion = 0

# Se pide:
#
# - Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
#
# - Si el usuario ingresa 1, podrá **agregar** un item y su stock en un solo string y agregarlo al hash.
# Para separar el nombre del stock el usuario debe utilizar una coma.
# 	- Ejemplo del input: "Pendrives, 100"
#
# - Si el usuario ingresa 2, **podrá eliminar** un item.
#
# - Si el usuario ingresa 3, puede **actualizar** la información almacenada (item y stock).
#
# - Si el usuario ingresa 4, podrá ver el **stock total** (suma del stock de cada item) que hay en el negocio.
#
# - Si el usuario ingresa 5, podrá ver el **ítem que tiene la mayor cantidad de stock**.
#
# - Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item **existe en el inventario** o no.
# Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
#
# - El programa debe repertirse hasta que el usuario ingrese 7 (salir).

txt_menu = <<MENU
Seleccionar una opción
1. Agregar Item
2. Eliminar Item
3. Actualizar item
4. Mostrar Suma total stock
5. Mostrar Item con mayor Stock
6. Consultar la existencia de in Item
7. Salir
MENU

def opcion_1(inv)
print "Agregar Item con Stock\n"
print "separa el nombre dle stock mediante una coma.\n"
item = gets.chomp.split(',')
print item
print "\n"
print inv[item.first] = item.last.to_i
print "\n"
print inv
print "\n"
end

def opcion_2(inv)
print "Elimine item con Stock\n"
print "Tel nombre del item debe existir en el stock\n"
item = gets.chomp
print "item eliminado #{item}\n\n" if inv.include?(item)
print "No existe el item: #{item}\n\n" unless inv.include?(item)
inv.delete(item)
print "\n\n"
print inv
print "\n\n"
end

def opcion_3(inv)
print "Actualizar Item con Stock\n"
print "separa el nombre dle stock mediante una coma.\n"
item = gets.chomp.split(',')
print inv.include?(item.first) ? "Actualizando item: #{item.first}\n\n" : "No Existe el item #{item.first}\n\n"
inv[item.first] = item.last.to_i if inv.include?(item.first)
print "\n"
print inv
print "\n\n"
end

def opcion_4(inv)
  print "ver total de Stock\n"
  total_stock = inv.values.sum
  print "Tu stock total es: #{total_stock}"
  print "\n"
  print inv
  print "\n\n"
end

def opcion_5(inv)
  print "ver item con mayor Stock\n"
  mayor_stock = inv.max_by { |llave, valor| valor }
  print "Tu item con mayor stock es : #{mayor_stock.first} con #{mayor_stock.last} elementos"
  print "\n"
  print inv
  print "\n\n"
end

def opcion_6(inv)
print "Consultar por item\n"
print "Ingrese el nombre del item\n"
item = gets.chomp
print "iExiste el item #{item}\n\n" if inv.include?(item)
print "No existe el item: #{item}\n\n" unless inv.include?(item)
print inv
print "\n\n"
end

while opcion != 7
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
    opcion_1 inventario
  when 2
    opcion_2 inventario
  when 3
    opcion_3 inventario
  when 4
    opcion_4 inventario
  when 5
    opcion_5 inventario
  when 6
    opcion_6 inventario
  when 7
    print "Elegiste salir\n\n"
  else
    print "Error de opcion\n\n"
  end
end
