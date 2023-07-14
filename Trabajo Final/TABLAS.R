#tablas dinamicas
# resumen de ventas por producto utilizando group y summarise con operador "pipe" para concatener
dt_res_prod <- dt_merge_3 %>% group_by(ID_Producto) %>%
summarise(Ingresos=sum(Ingreso)) %>% 
  print()

# resumen de ventas por categoria utilizando group y summarise con operador "pipe" para concatener
dt_res_prod_cat <- dt_merge_3 %>% group_by(Categoria) %>%
  summarise(Ingresos=sum(Ingreso)) %>% 
  print()
# dibujar la tabla en bars para las categorias de ventas
dt_res_prod %>% 
  ggplot(aes(x=ID_Producto,y=Ingresos))+
  geom_point()
  # dibujar la tabla en bars para ventas por producto
dt_res_prod_cat %>% 
  ggplot(aes(x=Categoria,y=Ingresos))+
  geom_col()
# tabla resumen categoria y segmento
dt_res_cat_seg <- dt_merge_3 %>% group_by(Categoria) %>%
  summarise(Ingresos=sum(Ingreso)) %>% 
  print()

