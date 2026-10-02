-- =============================================================
-- Exploración inicial de la tabla ventas_tecnologia
-- Compatible con SQLite y DuckDB
-- =============================================================

-- 1) Selección simple
-- Pregunta de negocio: ¿qué productos vendemos y a qué precio?
--   (listado ordenado alfabéticamente por nombre de producto)
SELECT producto, precio_unitario
FROM ventas_tecnologia
ORDER BY producto ASC;

-- 2) Filtrado crítico
-- Pregunta de negocio: ¿qué ventas de alto valor (precio unitario > 500)
--   se realizaron en Colombia?
SELECT *
FROM ventas_tecnologia
WHERE pais = 'Colombia'
  AND precio_unitario > 500;

-- 3) Búsqueda de nulos
-- Pregunta de negocio: ¿hay ventas cargadas sin categoría?
--   (se usa IS NULL, nunca = NULL)
SELECT *
FROM ventas_tecnologia
WHERE categoria IS NULL;

-- 4) Análisis de rendimiento (agregación)
-- Pregunta de negocio: ¿cuánto ingreso generó cada categoría?
--   ingresos = cantidad * precio_unitario
SELECT categoria,
       SUM(cantidad * precio_unitario) AS ingresos_totales
FROM ventas_tecnologia
GROUP BY categoria
ORDER BY ingresos_totales DESC;

-- 5) Filtro de élite (HAVING)
-- Pregunta de negocio: ¿qué categorías superaron los $10,000 en ingresos?
--   (se filtra sobre la agregación con HAVING, no con WHERE)
SELECT categoria,
       SUM(cantidad * precio_unitario) AS ingresos_totales
FROM ventas_tecnologia
GROUP BY categoria
HAVING SUM(cantidad * precio_unitario) > 10000
ORDER BY ingresos_totales DESC;
