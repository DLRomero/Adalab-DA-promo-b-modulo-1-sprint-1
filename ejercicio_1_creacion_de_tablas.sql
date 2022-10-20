
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `numero` int NOT NULL,
  `numero_telefono` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `codigo_postal` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cliente`)
)


CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tienda` varchar(45) NOT NULL,
  `salario` int DEFAULT NULL,
  `fecha_incorporacion` date NOT NULL,
  PRIMARY KEY (`id_empleado`)
)

CREATE TABLE `facturas` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `id_zapatillas` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_cliente` int NOT NULL,
  `numero_factura` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_factura`,`id_zapatillas`,`id_empleado`,`id_cliente`),
  KEY `fk_tablaFacturas_tablaZapatilla` (`id_zapatillas`),
  KEY `fk_tablaFacturas_tablaempleados` (`id_empleado`),
  KEY `fk_tablaFacturas_tablaclientes` (`id_cliente`),
  CONSTRAINT `fk_tablaFacturas_tabla` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `fk_tablaFacturas_tablacliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fk_tablaFacturas_tablaZapatilla` FOREIGN KEY (`id_zapatillas`) REFERENCES `zapatilla` (`id_zapatillas`)
)

CREATE TABLE `zapatilla` (
  `id_zapatillas` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  PRIMARY KEY (`id_zapatillas`)
)

