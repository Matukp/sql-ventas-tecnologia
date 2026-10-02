"""
Ejecuta el esquema y las consultas SQL sobre una base SQLite en memoria
y muestra cada resultado. No requiere librerías externas.
"""
import sqlite3
from pathlib import Path

BASE = Path(__file__).parent

# Conexión a una base SQLite temporal en memoria
conexion = sqlite3.connect(":memory:")
cursor = conexion.cursor()

# Crear la tabla y cargar los datos de ejemplo
cursor.executescript((BASE / "01_schema_y_datos.sql").read_text(encoding="utf-8"))

# Separar el archivo de consultas en sentencias individuales
texto = (BASE / "02_consultas.sql").read_text(encoding="utf-8")
consultas = [c.strip() for c in texto.split(";") if "SELECT" in c]

for numero, consulta in enumerate(consultas, start=1):
    # Título: primera línea de comentario de cada bloque
    titulo = next(l for l in consulta.splitlines() if l.startswith("-- ") and ")" in l)
    print(f"\n{titulo[3:]}")
    print("-" * 60)
    cursor.execute(consulta)
    columnas = [d[0] for d in cursor.description]
    print(" | ".join(columnas))
    for fila in cursor.fetchall():
        print(" | ".join(str(valor) for valor in fila))

conexion.close()
