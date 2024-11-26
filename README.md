# 🎫 **Reporte de captación de fondos de una ONG**
Herramienta: MySQL Workbench - [Ver script](https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/fundacion_potenciar_script.sql) <br>
Visualización: Power BI - [Ver panel] <br> 
Certificado: Fundamentos de Datos - [Ver certificado]
<br>

---
## 📂 Comprensión empresarial
Descripción del problema
Potenciar Solidario es una fundación sin ánimo de lucro que brinda cuatro proyectos sociales(potenciar rumbo, potenciar gestión, potenciar redes y potenciar dignidad) asequibles, integrales y de largo plazo. Uno de los problemas que presenta esta fundación es que los donantes se dan de baja o no son frecuentes con su aporte. Si la fundación experimenta este problema, tendrá que restringir sus actividades altruistas

Meta
Aumentar la captación de fondos a 45000000 por medio del refuerzo de su canal institucional(empresas y fundaciones) e individuos

Objetivos del proyecto
Crear un diseño Diagrama relacional de entidades
Analizar los datos en SQL
Crear una visualización de captación de fondos(rasgos demográficos de los donantes, patrones de temporalidad de baja)

Aquí muestro la base de datos de relaciones entre entidades
<br>
<details>
  
<p align="center">
  <kbd> <img width="400" alt="eer" src="https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/assets/hom_DER.png"></kbd> <br>
</p>

</details>
<br>

## 📂 Analisis de datos en SQL

1.¿Cuál es el promedio del importe de los donantes por año?
<details>
  <summary> Haga clic para ver la consulta </summary>
    <br>
    
```sql
SELECT round(avg(Importe)),  year(Fecha) AS Date_per_year
FROM f_ingreso
GROUP BY Date_per_year
ORDER BY Date_per_year DESC;
```  

<br>
</details>
<br>

<p align="center">
    <kbd> <img width="1000" alt="jkhjk" src="https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/assets/hom3_1.JPG"> </kbd> <br>
    Imagen 1 — Promedio de ingresos por año 
</p>
<br>



## 📂 Visualización de datos

Por lo tanto, es importante identificar a los donantes que presentan este tipo de problema y sus causas. Esto puede ser una medida preventiva para la fundación y garantizar una estrategia de fidelización de donantes






