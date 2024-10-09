USE cerveceria_la_birra_es_bella;

SELECT p.nombre AS nombre_producto, 
       SUM(pp.unidades) AS total_unidades_vendidas, 
       SUM(pp.precio_venta * pp.unidades) AS total_recaudado
FROM Pedidos_Productos pp
JOIN Productos p ON pp.id_producto = p.id_producto
GROUP BY p.id_producto
ORDER BY total_recaudado DESC;




