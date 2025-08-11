# **🗽🌬️📊 Air-Quality-USA-Analysis**
Este análisis estudia la calidad del aire en Estados Unidos, utilizando datos históricos provenientes de la EPA sobre contaminantes atmosféricos como NO₂, SO₂, O₃ y CO. El objetivo es identificar tendencias temporales, diferencias geográficas y eventos críticos que afecten la calidad del aire a nivel estatal y nacional.
El proyecto incluye consultas SQL optimizadas, visualizaciones interactivas y está respaldado por un modelo entidad-relación (ERD) que facilita la organización y análisis de los datos.

---

## **📂Estructura del proyecto**

```sql

Air-Quality-USA-Analysis/
│
├── 📓 Notebook/                  # Jupyter notebooks del análisis principal
│   └── 📒 Proyecto Calidad del Aire USA.ipynb
│
├── 🐍 __pycache__/                # Archivos compilados automáticamente por Python
│
├── 📊 data/                       # Archivos CSV con datos procesados y limpios
│   ├── 📄 promedios_anuales_estatales.csv
│   ├── 📄 tendencia_anual_CO.csv
│   ├── 📄 tendencia_anual_NO2.csv
│   └── 📄 tendencia_anual_O3.csv
│
├── 🗺️ erd/                        # Modelo entidad-relación
│   └── 📐 ERD Air Quality USA.mwb
│
├── 🖼️ exportados/                 # Gráficos e informes generados
│
├── 🗄️ sql/                        # Scripts SQL
│   └── 📜 insert_station.sql
│
├── 🛠️ utils/                      # Funciones y scripts de utilidad
│   └── ⚙️ db_connection.py
│
├── 🚫 .gitignore                  # Archivos y carpetas a excluir del control de versiones
├── 📄 README.md                   # Documentación principal del proyecto
└── 📦 requirements.txt            # Dependencias necesarias para reproducir el análisis
```

---

## 📐 Diagrama ER del Data Mart

![Diagrama ER del Data Mart](erd/ERD_Air_Quality_USA.png)

---

## 📊 Visualizaciones incluidas

### 🗺️ Mapas

- [Mapa de concentración por estado (2024)](exportados/mapa_concentracion_estados_2024.png)

### 🌦️ Estacionalidad y series
- [Comparativa estacional – California](exportados/comparativa_estacional_california.png)
- [Comparativa estacional – New York](exportados/comparativa_estacional_new%20york.png)
- [Estacionalidad CO](exportados/estacional_carbon_monoxide.png)
- [Estacionalidad NO₂](exportados/estacional_nitrogen_dioxide_(no2).png)
- [Estacionalidad O₃](exportados/estacional_ozone.png)
- [Estacionalidad SO₂](exportados/estacional_sulfur_dioxide.png)
- [Comparativa invierno vs verano (CSV)](exportados/comparativa_invierno_verano.csv)

---

### 📈 Tendencias anuales
- [Tendencia anual CO](exportados/tendencia_anual_CO.png)
- [Tendencia anual NO₂](exportados/tendencia_anual_NO2.png)
- [Tendencia anual O₃](exportados/tendencia_anual_O3.png)
- [Tendencia anual SO₂](exportados/tendencia_anual_SO2.png)
- [Tendencia anual – Estado de California](exportados/tendencia_anual_edo_calif.png)

### 🧭 Rankings (Top N)
- **Top 10 estados por promedio (2024):**  
  [CO](exportados/Top%2010%20Estados%20con%20Mayor%20Promedio%20de%20CO%20en%202024.png) ·
  [NO₂](exportados/Top%2010%20Estados%20con%20Mayor%20Promedio%20de%20NO2%20en%202024.png) ·
  [O₃](exportados/Top%2010%20Estados%20con%20Mayor%20Promedio%20de%20O3%20en%202024.png) ·
  [SO₂](exportados/Top%2010%20Estados%20con%20Mayor%20Promedio%20de%20SO2%20en%202024.png)
- **Top 5 condados por concentración (2018):**  
  [CO](exportados/Top%205%20Condados%20 con%20Mayor%20Concentraci%C3%B3n%20Promedio%20de%20CO%20en%202018.png) ·
  [NO₂](exportados/Top%205%20Condados%20con%20Mayor%20Concentraci%C3%B3n%20NO2%20en%202018.png) ·
  [O₃](exportados/Top%205%20Condados%20con%20Mayor%20Concentraci%C3%B3n%20O3%20en%202018.png) ·
  [SO₂](exportados/Top%205%20Condados%20con%20Mayor%20Concentraci%C3%B3n%20SO2%20en%202018.png)

### 🔎 Comparativas y otros
- [Heatmap de contaminantes (2024)](exportados/heatmap_contaminantes_2024.png)

---

## 🌐 Recursos

- 📂 [**Descargar tabla** `measurement` (SQL, Google Drive)](https://drive.google.com/uc?id=1f5AbJXAao2tyihk8RpGkH7jJ57XMzCIR&export=download)
- 🌎 [Datos de calidad del aire de la EPA](https://www.epa.gov/outdoor-air-quality-data)
- 📖 [Guía de AQI](https://www.airnow.gov/aqi/aqi-basics/)
- 🗂️ [Datos históricos de calidad del aire en EE.UU.](https://aqs.epa.gov/aqsweb/airdata/download_files.html)
- 📊 [Documentación de Seaborn](https://seaborn.pydata.org/)

---
