#cargar csv producto
dt_producto <- read.csv("Producto.csv") #cargar archivos csv

#cargar csv fabricante
dt_fabricante <- read.csv("Fabricante.csv") #cargar archivos csv

#anhade una columna con nombre de fabricante en la tabla producto
dt_merge <- inner_join(dt_producto,dt_fabricante, "ID_Fabricante")

# elimino columna ID_Fabricante
dt_merge <- dt_merge[,-5]

# cargo tabla ventas
dt_ventas <- read.csv("Ventas_5.csv") #cargar archivos csv

# anhade columna de producto a ventas
dt_merge_2 <- inner_join(dt_ventas,dt_merge, "ID_Producto")

# guardar archivo csv
write.csv(x=dt_merge_3,file="dt_merge_5.csv", row.names = FALSE)

#unir columna zona de ventas
dt_lugares <- read.csv("Lugares.csv")#cargar archivo csv lugares
dt_merge_3 <- inner_join(dt_merge_2,dt_lugares, "Zip")


