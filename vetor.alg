algoritmo "vetor"
// Autor : Leandro
// Data : 26/10/2021
// Seção de Declarações
var
temperatura,hora, conversao: vetor [1..4] de real
i,j: inteiro
aux, opcao:real
inicio

para i de 1 ate 4 faca
   escreval ("Informe a hora que a temperatura foi mediada ",i)
   leia(hora [i])
fimpara

para i de 1 ate 4 faca
   escreval ("Informe a temperatura ", i)
   leia(temperatura[i])
fimpara

escreval ("Converter de celsius para fahrenheit digite 1 ")
escreval ("converter de fahrenheit para celsius digite 2 ")

leia (opcao)

se opcao = 1 entao
   para i de 1 ate 4 faca
      conversao[i] <- 1.8*temperatura[i] + 32
   fimpara
senao
   se opcao = 2  entao
      para i de 1 ate 4 faca
         conversao[i] <- (temperatura[i] - 32)/1.8
      fimpara
   fimse
fimse

   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se conversao[j] < conversao[i] entao
            aux <- conversao[i]
            conversao[i] <- conversao[j]
            conversao[j] <- aux
         fimse
      fimpara
   fimpara

   para i de 1 ate 4 faca
        escreva (hora[i])
        escreval("H a temperatura marcada foi", conversao[i])

   fimpara


fimalgoritmo
