algoritmo "vetor"
// Autor : Leandro
// Data : 26/10/2021
// Seção de Declarações
var
temperatura,hora, conversao: vetor [1..4] de real
i,j,rep: inteiro
aux, opcao:real

inicio
enquanto rep <= 1 faca

   para i de 1 ate 4 faca
      escreval ("Informe a hora que a temperatura ",i," foi medida: ")
      leia(hora [i])
   fimpara

   para i de 1 ate 4 faca
      escreval ("Informe a ",i,"ª temperatura: ")
      leia(temperatura[i])
   fimpara

   escreval ("Para Converter de celsius para fahrenheit digite 1.")
   escreval ("Para Converter de fahrenheit para celsius digite 2.")

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
            aux <- hora[i]
            hora[i] <- hora[j]
            hora[j] <- aux
            aux <- temperatura[i]
            temperatura[i] <- temperatura[j]
            temperatura[j] <- aux
         fimse
      fimpara
   fimpara

   limpatela
   se opcao = 1 entao
      para i de 1 ate 4 faca
         escreva ("Às:",hora[i],"H")
         escreval(" a temperatura marcada foi:",temperatura[i]," Grau celsius")
         escreval ("Convertida para:",conversao[i], " Grau fahrenheit.")
      fimpara
   senao
      se opcao = 2  entao
         para i de 1 ate 4 faca
            escreva ("Às:",hora[i],"H")
            escreval(" a temperatura marcada foi:",temperatura[i]," Grau fahrenheit")
            escreval ("Convertida para:",conversao[i], " Grau celsius.")

         fimpara
      fimse
   fimse
   escreval("")
   escreval ("Aperte 1 para colocar novos valores e 2 para sair.")
   leia (rep)
   limpatela
fimenquanto

fimalgoritmo
