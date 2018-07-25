# Corrige el error para mostrar la información solicitada.
# 2. Se quiere agregar un nuevo producto al hash:
# producto[2200] = cereal
# Corrige la instrucción para agregar el producto.
# 3. Se quiere actualizar el precio de la bebida:
# producto[:bebida] = 2000
# Corrige la instrucción para actualizar el valor del producto existente.
# 4. Convertir el hash en un array y guardarlo en una nueva variable.
# 5. Eliminar el producto 'galletas' del hash.
productos = {:bebida => 850, :chocolate => 1200, :galletas => 900, :leche => 750}
productos.each { |producto, valor| puts "#{producto}: #{valor}" }

# 2.
productos[:cereal] = 2200

# 3.
productos[:bebida] = 2000

# 4.
new_array = productos.to_a
print new_array
print "\n"

# 5.
productos.each { |valor, producto| puts "#{producto}: #{valor}" }

# Aqui lo borramos
productos.delete(:galletas)
print productos
print "\n"
