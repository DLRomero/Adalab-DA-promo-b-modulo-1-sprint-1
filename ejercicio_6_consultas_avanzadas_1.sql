USE northwing;

#Ejercicio 1: Productos más baratos y caros de nuestra BBDD:
SELECT MAX(unit_price)AS HighestPrice, MIN(unit_price) AS LowestPrice FROM products;

#Ejercicio 2:Conociendo el numero de productos y su precio medio:
SELECT COUNT(product_id),AVG(unit_price) FROM products;

#Ejercicio 3:Sacad la máxima y mínima carga de los pedidos de UK:
SELECT MAX(freight), MIN(freight)
FROM orders
WHERE ship_country ='UK';

#Ejercicio 4:Qué productos se venden por encima del precio medio:
SELECT AVG(unit_price) FROM products; #R= 28.86

SELECT unit_price FROM products
WHERE unit_price >=28.86
ORDER BY unit_price DESC;

#Ejercicio 5:Qué productos se han descontinuado:
SELECT COUNT(discontinued) FROM products
WHERE discontinued = 1;

#Ejercicio 6:Detalles de los productos de la query anterior:
SELECT product_id, product_name FROM products
WHERE discontinued=0
ORDER BY product_id DESC
LIMIT 10;

#Adicionalmente nos piden detalles de aquellos productos no descontinuados, sobre todo el ProductID y ProductName. 
#Como puede que salgan demasiados resultados, nos piden que los limitemos a los 10 con ID más elevado, que serán los más recientes. 
#No nos pueden decir del departamento si habrá pocos o muchos resultados, pero lo limitamos por si acaso.


























