# Compilación de funciones de matemáticas financieras 

En este reporsitorio, se agrupan las funciones y actividades informaticas realizadas en la materia de Matemáticas Financieras de la licenciatura de Actuaría y Ciencia de Datos de UMSNH

## Funciones de interes simple.

Con el siguiente código, puede usted cargar las funciones relativas a los calculos de interes simple:

```{r}
source("https://raw.githubusercontent.com/LDGG19/Inter-sSimple/refs/heads/main/Inter%C3%A9sSimple.R")
```

A continuacion nos basamos en el siguiente ejemplo: Jose Ignacio presta $1,000.00 a una tasa de interés simple del 24% durante 7 meses. Utilizando año natural, diga Usted el Monto que recibirá al final del préstamo.


### Calculo del Valor Futuro.

Para ilustrar el ejemplo, se tiene el siguiente ejercicio:
$VA$=$1,000.00
$i$=24.00% anualizado.
$r$=2.00% mensual
$t$=7 meses

Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada:
valorActual=1000
tasaPeriodo=0.02
nPeriodos=7
# Calculamos el valor futuro:
valorfuturo=valorFinalSimple(VA=valorActual,r=tasaPeriodo,t=nPeriodos)
#Imprimos el resultado:
valorfuturo
```
### Cáculo del Valor Actual

Para ilustrar el uso de esta formula, utilizaremos los valores del mismo ejemplo que se uso con aterioridad, para verificar que este correcto.
$i$=24.00% anualizado.
$r$=2.00% mensual
$t$=7 meses

Se realizan los cálculos para la obtencion del resultado
```{r}
# Creamos objetos con los valores de entrada:
tasaPeriodo=0.02
nPeriodos=7
# Calculamos el valor actual:
valoractual=valorActualSimple(VF=valorFuturo,r=tasaPeriodo,t=nPeriodos)
#Imprimos el resultado:
valorActual
```
### Ahora, calculamos el Valor de r (tasa de periodo)

Igual que en las formulas anteriores, nos basamos en el mismo ejemplo, por lo tanto tendremos los siguienetes datos:
$VF$=$1140
$VA$=$1000
$t$=7 meses
```{r}
# Creamos objetos con los valores de entrada:
nPeriodos=7
# Calculamos r (tasa de periodo):
valorder=valorDerSimple(VF=valorFuturo,VA=valorActual,t=nPeriodos)
#Imprimos el resultado:
valorDer
```

### Calculamos el Valor de t (tiempo)

Nos basamos en el mismo ejemplo, y tenemos:
$VF$=$1140
$VA$=$1000
$r$=0.02 mensual
```{r}
# Calculamos t (tiempo):
valordet=valorDetSimple(VF=valorFuturo,VA=valorActual,r=tasaPeriodo)
#Imprimos el resultado:
valorDet
```

Incluyo mis comandos de consola para su facilitacion de verificacion, pero antes de ejecutar en la consola estos comando es OBLIGATORIO primero ejecutar lo siguiente:
```
source("https://raw.githubusercontent.com/LDGG19/Tarea-Inter-s-simple-/refs/heads/main/Inter%C3%A9sSimple.R?token=GHSAT0AAAAAACXYGPNRSAVIV67FYT63UAG4ZXOEMZQ")
```
Ahora, despues de ejecutar esto, podemos poner en nuestra consola uno por uno de los siguientes:

```
VF=valorFinalSimple(VA=1000,r=0.02,t=7)
```

```
VA=valorActualSimple(VF=1140,r=0.02,t=7)
```

```
r=valorDerSimple(VF=1140,VA=1000,t=7)
```

```
t=valorDetSimple(VF=1140,VA=1000,r=0.02)
```
