# 🎫 **Reporte de captación de fondos de una ONG**
Herramienta: MySQL Workbench - [Ver script](https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/fundacion_potenciar_script.sql) <br>
Visualización: Power BI - [Ver panel] <br> 
Certificado: Fundamentos de Datos - [Ver certificado]
<br>

---

## 📂 Comprensión empresarial

**Descripción del problema** <br>
Potenciar Solidario es una fundación sin ánimo de lucro que brinda cuatro proyectos sociales(potenciar rumbo, potenciar gestión, potenciar redes y potenciar dignidad) asequibles, integrales y de largo plazo. Uno de los problemas que presenta esta fundación es que los donantes se dan de baja o no son frecuentes con su aporte. Si la fundación experimenta este problema, tendrá que restringir sus actividades altruistas
<br>

**Meta** <br>
Aumentar la captación de fondos a $ 45 000000 por medio del refuerzo de su canal institucional(empresas y fundaciones) e individuos
<br>

**Objetivos del proyecto** <br> 
	- Analizar los datos en SQL
	- Crear una visualización de captación de fondos(rasgos demográficos de los donantes, patrones de temporalidad de baja)
<br>

Aquí muestro la base de datos de relaciones entre entidades:
<br>

<p align="center">
  <kbd> <img width="1000" alt="eer" src="https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/assets/hom_DER.png"></kbd> <br>
  Imagen 1 — Diagrama entidad- relación para la fundación Potenciar Solidario 
</p>

<br>

---

## 📂 Análisis de datos en SQL

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

</details>
<br>

<p align="center">
    <kbd> <img width="400" alt="jkhjk" src="https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/assets/hom3_1.JPG"> </kbd> <br>
    Query 1 — Promedio de ingresos por año 
</p>
<br>

2.¿Cuál es el promedio de los gastos en la ONG por año?
<details>
  <summary> Haga clic para ver la consulta </summary>
    <br> 

```sql
SELECT round(avg(Importe)), year(Fecha) AS Year_fundation
FROM f_egreso
GROUP BY Year_fundation
ORDER BY Year_fundation DESC;
```  

</details>
<br>

<p align="center">
    <kbd> <img width="400" alt="jkhjk" src="https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/assets/hom3_2.JPG"> </kbd> <br>
    Query 2 — Promedio de los gastos por año
</p>
<br>

3.El promedio del importe de los donantes del año 2024 es $ 379.180
¿Hay algún donante por debajo de ese promedio? Obtener el nombre, el importe
y el estado del donante que cumplan son esa condición. Ordenar por su importe
	a) realizar una consulta con el dato del promedio brindado en la consigna
<details>
  <summary> Haga clic para ver la consulta </summary>
    <br> 

```sql
SELECT d.Nombre, e.Estado_donante, i.Importe
FROM f_donante AS d
INNER JOIN d_estado_donante AS e
ON d.Id_estado = e.Id_estado
INNER JOIN f_ingreso AS i
ON d.Id_donante = i.Id_donante
WHERE i.Importe < 379180 AND YEAR(i.Fecha) = 2024
ORDER BY i.Importe
LIMIT 10;
```  

</details>
<br>

<p align="center">
    <kbd> <img width="400" alt="jkhjk" src="https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/assets/hom3_3.JPG"> </kbd> <br>
    Query 3 — Donantes en riesgo 
</p>
<br>

4. Obtener una lista con los distintos gastos de la ONG y su total que se le designa
a cada uno. Ordenar en forma descendente
	a) realizar una subconsulta para obtener el dato de promedio
<details>
  <summary> Haga clic para ver la consulta </summary>
    <br> 

```sql
SELECT p.Nombre, e.Importe, c.Categoria
FROM f_proveedor AS p
INNER JOIN d_categ_proveedor AS c
ON p.Id_categoria = c.Id_categoria
INNER JOIN f_egreso as e
ON  p.Id_proveedor= e.Id_proveedor
WHERE e.Importe >(SELECT avg(Importe) FROM f_egreso	WHERE year(Fecha)= 2024)
LIMIT 10;
```  

</details>
<br>

<p align="center">
    <kbd> <img width="400" alt="jkhjk" src="https://github.com/litahu/Data-Analytics-in-SQL-de-Potenciar-Solidario/blob/main/assets/hom3_4.JPG"> </kbd> <br>
    Query 4 — Identificación de proveedor por categoría de los gastos más altos
</p>
<br>


## 📂 Visualización de datos

Por lo tanto, es importante identificar a los donantes que presentan este tipo de problema y sus causas. En efecto, realicé un panel de control para la fundación de tal forma que la ONG establesca una estrategia de fidelización de donantes






