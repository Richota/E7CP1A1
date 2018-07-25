# Se tienen dos arrays uno con el nombre de personas y otro con las edades,
# se pide generar un hash con el nombre y edad de cada persona
# (se asume que no existen dos personas con el mismo nombre)

personas = ['Carolina', 'Alejandro', 'Maria Jesus', 'Valentin']
edades = [32, 28, 41, 19]
print personas.zip(edades)
print "\n\n"
# 1. Se pide generar un hash con la información:

personas_hash = personas.zip(edades).to_h
print personas_hash
print "\n\n"
# 2. Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento

def promedio(h_pmt)
	h_pmt.values.sum / h_pmt.length
end

print promedio(personas_hash)
