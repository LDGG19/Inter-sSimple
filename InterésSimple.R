#Se presentan las funciones de interes simple.
#Autor: Leonardo Daniel Godínez Guízar
#V 1.0: 20 de septiembre de 2024. 

# Valor Futuro con Interés Simple:  

valorFinalSimple=function(VA,r,t){
  xSalida=VA*(1+(r*t))
  
  return(xSalida)
}

 # Valor actual o Valor Presente
 valorActualSimple=function(VF,r,t){
   xSalida=VF/(1+(r*t))
   
   return(xSalida)
 }
 
 # Valor de Tasa equivalente del periodo o "r"
 valorDerSimple=function(VF,VA,t){
   xSalida=(VF-VA)/(VA*t)
 }
 
 # Valor de Periodo de la operación o "t"
 valorDetSimple=function(VF,VA,r){
   xSalida=(VF-VA)/(VA*r)
 }
