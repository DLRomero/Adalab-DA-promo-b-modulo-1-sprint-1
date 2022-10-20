USE northwind

#EJERCICIO1
-- Conociendo el tipo de productos que vendemos en Northwind: 
-- Crea una consulta que muestre los primeros 10 productos según su ID y que nos indique el nombre de
-- dichos productos y sus precios.--


SELECT product_name
FROM products
ORDER BY product_id 
LIMIT 10;

#EJERCICIO2
-- Ordenando los resultados:
-- Ahora realiza la misma consulta pero que nos muestre los 
-- últimos 10 productos según su ID de manera descendiente. --

SELECT product_name 
FROM products
ORDER BY product_id DESC
LIMIT 10;

#EJERCICIO3
-- Que pedidos tenemos en nuestra BBDD:
-- Últimamente ha habido algo de descontrol en la empresa a la hora de controlar los pedidos.
 -- Nos interesa conocer qué pedidos distintos hemos tenido (eliminando entradas duplicadas
 -- según su ID en la tabla order_details).

SELECT DISTINCT order_id
FROM order_details;


#EJERCICIO4
-- Los dos primeros pedidos:
-- Como el número de pedidos es demasiado alto para visualizarlo de manera práctica en la consulta anterior, 
-- vamos a limitar los resultados sólo a los 2 primeros pedidos para verlos más en detalle. 
-- Sin embargo, en la tabla OrderDetails pueden existir varios registros para cada pedido, 
-- por lo que no nos servirá con un uso normal del comando LIMIT.

SELECT DISTINCT order_id
FROM order_details
ORDER BY order_id 
LIMIT 2;


#EJERCICIO5
-- Qué pedidos han gastado más: Una vez hemos inspeccionado el tipo de pedidos que tenemos en la empresa,
 -- desde la dirección nos piden conocer los 3 pedidos que han supuesto un mayor coste económico total 
 -- para la empresa.
 -- Calcúlalo y dale el alias ImporteTotal.
 
SELECT unit_price, (unit_price * quantity) AS ImporteTotal 
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;

#EJERCICIO 6
-- Los pedidos que están entre las posiciones 5 y 10 de nuestro ranking:
-- Ahora, no sabemos bien por qué razón, 
-- desde el departamento de Ventas nos piden seleccionar el ID de los pedidos 
-- situados entre la 5 y la 10 mejor posición en cuanto al coste económico total ImporteTotal.


SELECT unit_price, (unit_price * quantity) AS ImporteTotal 
FROM order_details  
ORDER BY ImporteTotal DESC
LIMIT 10
OFFSET 5;  