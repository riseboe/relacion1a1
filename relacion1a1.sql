CREATE DATABASE tienda;
USE tienda;



/* . Cada Tienda tiene un único Inventario,
 y cada inventario pertenece exclusivamente a una tienda */
 
 -- Relacion 1 a 1.
 
CREATE TABLE tiendas(
	id_tienda TINYINT UNSIGNED,
    nombre_tienda VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_tienda)
);

CREATE TABLE inventarios(
	id_inventario TINYINT UNSIGNED,
    ultima_actualizacion DATE NOT NULL,
    PRIMARY KEY(id_inventario),
    
    -- Foranea
    id_tienda TINYINT UNSIGNED UNIQUE,
    FOREIGN KEY(id_tienda) REFERENCES tiendas(id_tienda) ON DELETE CASCADE
);

-- Ingresamos datos a tabla tiendas:

INSERT INTO 
	tiendas (id_tienda, nombre_tienda)
VALUES
	(1, 'Disco1'),
	(2, 'Disco2'),
    (3, 'Disco3'),
    (4, 'Disco4'),
    (5, 'Disco5');
    
-- Ingremos datos a la tabla inventarios:

INSERT INTO
	inventarios (id_inventario, ultima_actualizacion, id_tienda)
VALUES
	(100, '2020-12-20', 1),
    (102, '2010-11-19', 2),
    (103, '2009-10-09', 3),
    (104, '2004-04-04', 4),
    (105, '2005-05-05', 5);
    
-- SENTENCIAS PARA CONSULTAR LOS REGISTROS A LAS TABLAS.

SELECT * FROM tiendas;
SELECT * FROM inventarios;
