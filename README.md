# Sintaxis SQL fundamental – Ventas de tecnología

Práctica del **Módulo 0 – Unidad 2** del curso *Data Science II: Machine Learning para la Ciencia de Datos* (Coderhouse).

Simula la exploración inicial que hace un Data Scientist sobre una tabla de ventas antes de modelar.

## Contenido

| Archivo | Descripción |
|---|---|
| `01_schema_y_datos.sql` | Crea la tabla `ventas_tecnologia` y carga 20 ventas de ejemplo (incluye 2 con `categoria` en `NULL`) |
| `02_consultas.sql` | Las 5 consultas de la práctica, cada una con un comentario que explica la pregunta de negocio |
| `ejecutar_consultas.py` | Ejecuta ambos archivos sobre SQLite en memoria y muestra los resultados |

## Consultas

1. **Selección simple:** productos y precio, ordenados alfabéticamente.
2. **Filtrado crítico:** ventas en Colombia con `precio_unitario > 500`.
3. **Búsqueda de nulos:** registros con `categoria IS NULL`.
4. **Agregación:** ingresos (`cantidad * precio_unitario`) por categoría con el alias `ingresos_totales`.
5. **HAVING:** solo las categorías con más de $10,000 de ingresos.

## Cómo ejecutarlo

```bash
python ejecutar_consultas.py
```

Usa solo `sqlite3` (incluido en Python). Los archivos `.sql` también corren en DuckDB.

## Resultado destacado

| categoria | ingresos_totales |
|---|---|
| Computadoras | 16,730 |
| Celulares | 16,180 |

Además se detectaron **2 ventas sin categoría** (webcam y tablet) que habría que corregir antes de usar los datos en un modelo.

## Buenas prácticas aplicadas

- Palabras clave de SQL en MAYÚSCULAS.
- `IS NULL` en lugar de `= NULL`.
- `HAVING` para filtrar agregaciones (no `WHERE`).
- Toda columna no agregada del `SELECT` está en el `GROUP BY`.

---
Autor: Matías Rodríguez
