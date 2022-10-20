USE northwing;

#EJERCICIO 1: Conociendo a las empleadas:
SELECT employee_id,last_name,first_name FROM employees;

#EJERCICIO 2: Conociendo los productos más baratos:
SELECT product_name FROM products
WHERE unit_price <= 5;

#EJERCICIO 3: Conociendo los productos de los que queremos maximizar ventas:
SELECT product_name,unit_price FROM products
WHERE unit_price =18
OR unit_price =19
OR unit_price=20;

#EJERCICIO 4: Conociendo los productos que dan más beneficios.
SELECT product_name FROM products
WHERE unit_price >= 15
AND unit_price <=50;

#EJERCICIO 5: Conociendo los productos que no tienen precio:
SELECT product_name FROM products
WHERE unit_price IS NULL; #No hay ninguno nulo

#EJERCICIO 6: Comparando productos:
SELECT product_name, unit_price FROM products
WHERE unit_price <15
AND product_id <10;

#EJERCICIO 7: Cambiando de operadores:
#Ahora vamos a hacer la misma consulta que en ejercicio anterior, pero haciendo uso del operador NOT.
SELECT product_name FROM products
WHERE NOT unit_price >15
AND NOT product_id >10;

#EJERCICIO 8: Conociendo los paises a los que vendemos:
SELECT ship_country
FROM orders
WHERE ship_country IS NOT NULL;























