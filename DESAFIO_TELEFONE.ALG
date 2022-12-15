Algoritmo "desafio_telefone"


Var


  i, j, N, M, clientes:inteiro
  vetN: vetor [0..9] de caractere
  vetTel:vetor [0..9] de caractere
  matTipo:vetor [0..9,0..9] de real
  vetTipo:vetor[0..9] de inteiro
  vetMin: vetor[0..9] de inteiro
  vetConta:vetor[0..9] de real


Inicio

    escreva("Informe a quantidade de clientes: ")
    leia(clientes)


    para i de 0 ate clientes-1 faca
       escreval("Dados do",i+1,"o. cliente:")
       escreva("Nome: ")
             leia(vetN[i])
       escreva("Telefone: ")
             leia(vetTel[i])
       escreva("Tipo: ")
             leia(vetTipo[i])
       escreva("Minutos: ")
             leia(vetMin[i])
    fimpara
    
  escreval
  escreval("Informe o preco basico e excedente de cada tipo de conta: ")
  para i de 0 ate 2 faca
       escreval("Tipo",i,":")
       para j de 0 ate 1 faca
           leia(matTipo[i,j])
       fimpara
  fimpara
  
  para i de 0 ate clientes-1 faca
    se (vetTipo[i] = 0) e (vetMin[i] < 90) entao
       vetConta[i] <- matTipo[0,0]
    fimse
       se (vetTipo[i] = 0) e (vetMin[i] > 90) entao
       vetConta[i] <- matTipo[0,0] + (vetMin[i] - 90)*matTipo[0,1]
    fimse

       se (vetTipo[i] = 1) e (vetMin[i] < 90) entao
       vetConta[i] <- matTipo[1,0]
    fimse
       se (vetTipo[i] = 1) e (vetMin[i] > 90) entao
       vetConta[i] <- matTipo[1,0] + (vetMin[i] - 90)*matTipo[1,1]
    fimse
    
      se (vetTipo[i] = 2) e (vetMin[i] < 90) entao
       vetConta[i] <- matTipo[2,0]
    fimse
       se (vetTipo[i] = 2) e (vetMin[i] > 90) entao
       vetConta[i] <- matTipo[2,0] + (vetMin[i] - 90)*matTipo[2,1]
    fimse

  fimpara

  escreval
  escreval("RELATÓRIO DE CLIENTES: ")
  escreval
  para i de 0 ate clientes-1 faca
       escreval(vetN[i], ", ", vetTel[i],", ","Tipo", vetTipo[i], ", ", "Minutos:", vetMin[i], ", ", "Conta = R$",vetConta[i]:6:2)
  fimpara
  



Fimalgoritmo