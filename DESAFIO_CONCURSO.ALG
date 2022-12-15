Algoritmo "desafio_concurso"


Var

  N, i: inteiro
  vetN: vetor [0..9] de caractere
  vet1: vetor [0..9] de real
  vet2: vetor [0..9] de real
  vetM: vetor [0..9] de real
  somaTotalDosAprovados, mediaTotalDosAprovados: real
  numeroAprovados:inteiro
  maiorMedia:real
  nomeMaiorMedia:caractere
Inicio

    escreva("Qual a quantidade de pessoas?")
    leia(N)

   numeroAprovados <- 0
   maiorMedia <- 0
    
    para i de 0 ate N-1 faca
         escreval("Digite os dados da", i + 1,"a pessoa: ")
         escreva("Nome: ")
         leia(vetN[i])
         escreva("Nota etapa 1: ")
         leia(vet1[i])
         escreva("Nota etapa 2: ")
         leia(vet2[i])
   fimpara
   
    para i de 0 ate N-1 faca
        vetM[i] <- (vet1[i] + vet2[i])/2
    fimpara

   escreval
   escreval("TABELA: ")
   para i de 0 ate N-1 faca
        escreval(vetN[i],",", vet1[i]:3:1,",", vet2[i]:3:1,",","MEDIA = ", vetM[i]:4:2)
   fimpara

   escreval
   escreval("PESSOAS APROVADAS: ")
     para i de 0 ate N-1 faca
         se vetM[i] >= 70 entao
            escreval(vetN[i])
            numeroAprovados <- numeroAprovados + 1
         fimse
     fimpara

   escreval
   escreva("Porcentagem de aprovação: ", (100*numeroAprovados/N):3:1,"%")


     para i de 0 ate N-1 faca
       se vetM[i] > maiorMedia entao
          maiorMedia <- vetM[i]
          nomeMaiorMedia <- vetN[i]
       fimse
     fimpara
     
     escreval
     escreva("Maior média: ",nomeMaiorMedia)
     
     para i de 0 ate N-1 faca
          se vetM[i] >= 70 entao
             somaTotalDosAprovados <- somaTotalDosAprovados + vetM[i]
          fimse
     fimpara
     

       
      escreval
      se vetM[i] >=70 entao
      mediaTotalDosAprovados <- somaTotalDosAprovados/numeroAprovados
         escreva("Nota média dos aprovados: ",mediaTotalDosAprovados:4:2)
           senao
           escreva("Não há candidatos aprovados")
           fimse
Fimalgoritmo


