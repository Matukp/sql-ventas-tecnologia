-- =============================================================
-- Creación de la tabla ventas_tecnologia y carga de datos de ejemplo
-- Compatible con SQLite y DuckDB
-- =============================================================

DROP TABLE IF EXISTS ventas_tecnologia;

CREATE TABLE ventas_tecnologia (
    id_venta        INTEGER PRIMARY KEY,
    producto        VARCHAR(100) NOT NULL,
    categoria       VARCHAR(50),          -- puede quedar en NULL (error de carga)
    precio_unitario DECIMAL(10, 2) NOT NULL,
    cantidad        INTEGER NOT NULL,
    fecha           DATE NOT NULL,
    pais            VARCHAR(50) NOT NULL
);

INSERT INTO ventas_tecnologia (id_venta, producto, categoria, precio_unitario, cantidad, fecha, pais) VALUES
    (1,  'Notebook Lenovo IdeaPad', 'Computadoras', 850.00, 6, '2026-08-02', 'Colombia'),
    (2,  'Notebook HP Pavilion',    'Computadoras', 920.00, 4, '2026-08-05', 'Argentina'),
    (3,  'MacBook Air M3',          'Computadoras', 1350.00, 3, '2026-08-07', 'México'),
    (4,  'Monitor LG 27"',          'Monitores',    310.00, 8, '2026-08-08', 'Colombia'),
    (5,  'Monitor Samsung 32" 4K',  'Monitores',    540.00, 5, '2026-08-10', 'Colombia'),
    (6,  'Mouse Logitech MX',       'Accesorios',    95.00, 30, '2026-08-11', 'Argentina'),
    (7,  'Teclado Mecánico Redragon','Accesorios',   70.00, 25, '2026-08-12', 'Chile'),
    (8,  'Auriculares Sony WH-1000','Audio',        380.00, 7, '2026-08-13', 'México'),
    (9,  'Parlante JBL Flip 6',     'Audio',        130.00, 12, '2026-08-15', 'Colombia'),
    (10, 'iPhone 15',               'Celulares',   1100.00, 6, '2026-08-16', 'Colombia'),
    (11, 'Samsung Galaxy S24',      'Celulares',    980.00, 5, '2026-08-18', 'Argentina'),
    (12, 'Motorola Edge 50',        'Celulares',    520.00, 9, '2026-08-20', 'Chile'),
    (13, 'Webcam Logitech C920',    NULL,            85.00, 15, '2026-08-21', 'Argentina'),
    (14, 'Tablet Samsung Tab S9',   NULL,           750.00, 3, '2026-08-22', 'Colombia'),
    (15, 'Disco SSD 1TB Kingston',  'Almacenamiento', 110.00, 20, '2026-08-24', 'México'),
    (16, 'Pendrive 128GB SanDisk',  'Almacenamiento',  25.00, 40, '2026-08-25', 'Colombia'),
    (17, 'Router TP-Link AX3000',   'Redes',        160.00, 10, '2026-08-27', 'Chile'),
    (18, 'Notebook Dell Inspiron',  'Computadoras', 780.00, 5, '2026-08-29', 'Colombia'),
    (19, 'Hub USB-C Anker',         'Accesorios',    45.00, 35, '2026-08-30', 'México'),
    (20, 'Smartwatch Apple Watch',  'Wearables',    450.00, 4, '2026-08-31', 'Colombia');
