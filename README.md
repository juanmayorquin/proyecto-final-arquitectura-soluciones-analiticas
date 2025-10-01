# Proyecto ETL con Apache Hop y PostgreSQL

Este proyecto contiene un flujo de trabajo de integración de datos utilizando **Apache Hop** y una base de datos **PostgreSQL** en contenedor Docker.

---

## 📂 Estructura del proyecto

```
├── Analisis-Datacleaner/     # Evidencias de análisis y limpieza de datos
├── Fuentes/                  # Archivos fuente (.csv, etc.)
├── Scripts/                  # Scripts SQL para creación de tablas
│   ├── crearElemento.sql
│   └── crearGlobal.sql
├── Workflow/                 # Flujos de trabajo y pipelines de Apache Hop
│   ├── GLOBAL.hwf            # Workflow principal que ejecuta todo en orden
│   ├── STG1_ELEMENTO.hpl
│   ├── STG1_GLOBAL.hpl
│   ├── STG2_ELEMENTO.hpl
│   ├── STG3_ELEMENTO.hpl
│   ├── FINAL_ELEMENTO.hpl
│   └── project-config.json
├── metadata/                 # Configuración de metadatos de Hop
├── docker-compose.yml        # Definición de servicios Docker (PostgreSQL)
└── README.md                 # Documentación del proyecto
```

---

## 🚀 Requisitos previos

* [Docker](https://www.docker.com/) y [Docker Compose](https://docs.docker.com/compose/)
* [Apache Hop](https://hop.apache.org/download/)

---

## 🐳 Levantar el contenedor de base de datos

En la raíz del proyecto, ejecutar:

```bash
docker-compose up -d
```

Esto iniciará un contenedor con PostgreSQL en el puerto **5432**.

### Credenciales de conexión

* **Host:** localhost
* **Port:** 5432
* **Database:** bd
* **User:** arq
* **Password:** password

---

## 🗄️ Creación de tablas

En la carpeta `Scripts/` se encuentran los archivos SQL necesarios para crear las tablas iniciales:

```bash
psql -h localhost -p 5432 -U arq -d bd -f Scripts/crearElemento.sql
psql -h localhost -p 5432 -U arq -d bd -f Scripts/crearGlobal.sql
```

---

## 🔄 Ejecutar el flujo de Apache Hop

1. Abrir **Apache Hop GUI**.
2. Importar el proyecto seleccionando la carpeta `Workflow/`.
3. Cargar el archivo de configuración `project-config.json`.
4. Ejecutar el **workflow principal**:

   * `GLOBAL.hwf` → este se encarga de correr automáticamente todos los pipelines en el orden correcto:

     1. `STG1_GLOBAL.hpl`
     2. `STG1_ELEMENTO.hpl`
     3. `STG2_ELEMENTO.hpl`
     4. `STG3_ELEMENTO.hpl`
     5. `FINAL_ELEMENTO.hpl`

---

## 📌 Notas

* Asegúrese de que el contenedor de PostgreSQL esté corriendo antes de ejecutar el workflow.
* Los archivos fuente para el proceso ETL se encuentran en la carpeta `Fuentes/`.
* Los análisis y documentación complementaria están en `Analisis-Datacleaner/`.

---
