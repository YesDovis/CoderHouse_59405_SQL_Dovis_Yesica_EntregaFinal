USE cerveceria_la_birra_es_bella;


SELECT CONCAT(u.nombre, ' ', u.apellidos) AS cliente, 
    COUNT(p.id_pedido) AS total_pedidos, 
    SUM(pp.precio_venta * pp.unidades) AS total_gastado
FROM Usuarios u
JOIN Pedidos p ON u.id_usuario = p.id_usuario
JOIN Pedidos_Productos pp ON p.id_pedido = pp.id_pedido
GROUP BY u.id_usuario
ORDER BY total_gastado DESC;