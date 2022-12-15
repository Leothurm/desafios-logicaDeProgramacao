Algoritmo "desafio_atletas"




Var


 i, quantidadeAtletas:inteiro
 nome, sexo:caractere
 altura,peso:real
 sexo1:caractere
 peso1,altura1:real
 totalM,totalF:real
 pesoTotal:real
 alturaMulheres:real
 atletaMaisAlto: caractere
 maiorAltura:real

Inicio

  escreva("Qual a quantidade de atletas? ")
  leia(quantidadeAtletas)
  
  pesoTotal <- 0
  totalM<-0
  totalF<-0
  alturaMulheres <- 0
  maiorAltura <- 0
  
  para i de 1 ate quantidadeAtletas faca
    escreval("Digite os dados do atleta numero ",i)
     escreva("Nome: ")
     leia(nome)

     escreva("Sexo: ")
     leia(sexo1)
     
     se (sexo1 = "M") ou (sexo1 = "F") entao
        sexo <- sexo1
        senao
             repita
              escreva("Valor invalido! Favor digitar F ou M: ")
              leia(sexo1)
              sexo <- sexo1
             ate (sexo1 = "M") ou (sexo1 ="F")
     fimse
     
     se (sexo1 = "M") entao
       totalM <- totalM + 1
          senao
             totalF <-totalF + 1
          fimse
     
     
     escreva("Altura: ")
     leia(altura1)
     se (altura1 > 0) entao
        altura <- altura1
        senao
             repita
              escreva("Valor invalido! Favor digitar um valor positivo: ")
              leia(altura1)
              altura <- altura1
             ate (altura1>0)
        fimse
     

     
     se altura1 > maiorAltura entao
        maiorAltura <- altura1
        atletaMaisAlto<-nome
     fimse

     
     se sexo = "F" entao
        alturaMulheres <- alturaMulheres + altura
        fimse

     escreva("Peso: ")
     leia(peso1)
     se (peso1 >0) entao
        peso <- peso1
        senao
             repita
              escreva("Valor invalido! Favor digitar um valor positivo: ")
              leia(peso1)
              peso <- peso1
             ate (peso1>0)
     fimse
     
     pesoTotal <- pesoTotal + peso
     
 fimpara
 
  se totalF = 0 entao
     totalF <- totalF + 1
     fimse
 
  escreval
  escreval("RELATÓRIO: ")
  escreval("Peso médio dos atletas: ", (pesototal/quantidadeAtletas):4:2)
  escreval("Atleta mais alto: ", atletaMaisAlto)
  escreval("Porcentagem de homens: ", (totalM/(totalM+totalF)*100):4:2,"%")
  escreval("Altura média das mulheres: ", (alturaMulheres/totalF):4:2)




Fimalgoritmo