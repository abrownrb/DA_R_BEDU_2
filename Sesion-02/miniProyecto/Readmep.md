`Estadistica-Programacion-con-R` > [`Programacion con R`] > [`Sesion-02`] > [`miniProyecto`] 

### OBJETIVO  
 
- En particular, saber que hacer cuando nos encontramos con valores NA en nuestro dataset (agregar una nueva columna a un data.frame - manejo de NA).  

#### REQUISITOS
- Cuenta de GitHub  
- Git Bash  
- R versión 3.6.2 o mayor                                
- R Studio versión 1.2.5033 o mayor   

#### DESARROLLO

a. Tienes el data.frame 'mydf' con cuatro columnas como a continuación.
```{r}
a = c(3,7,NA, 9)
b = c(2,NA,9,3)
f = c(5,2,5,6)
d = c(NA,3,4,NA)
 
mydf = data.frame(a=a,b=b,f=f,d=d);mydf
```
b. Deseas agregar otra columna '5':

Haz una función que de como resultado lo siguiente:

- la quinta columna contiene el valor de col 2 si col 1 es NA;
- la quinta columna contiene el valor de col 4 si col 2 es NA;
- la quinta columna contiene el valor de col 3 en todos los demás casos.

Resultado esperado:
```{r}
   a  b f  d V5
1  3  2 5 NA  5
2  7 NA 2  3  3
3 NA  9 5  4  9
4  9  3 6 NA  6
```
c. Haz una transoformación al dataset nuevamente donde los NA sean remplazados por algún valor referencia por ejemplo 0.



