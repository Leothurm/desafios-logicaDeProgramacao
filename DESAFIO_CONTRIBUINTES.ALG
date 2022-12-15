funcao impostoSobreSalario(quantia: real) : real
   inicio
      se quantia/12 < 3000 entao
         retorne 0.00
          senao
               se quantia/12 < 5000 entao
             retorne quantia*0.10
                 senao
                      retorne quantia*0.20
                 fimse
          fimse
   fimfuncao
   
funcao impostoSobreServicos(quantia: real) : real

   inicio
      se quantia > 0 entao
         retorne quantia * 0.15
            senao
                 retorne 0.00
            fimse
   
   fimfuncao
   
funcao impostoSobreGC(quantia: real) : real
    inicio
           se quantia > 0 entao
         retorne quantia * 0.20
            senao
                 retorne 0.00
            fimse
    
    fimfuncao

funcao impostoBrutoTotal(salario: real; servicos: real; gc: real) : real
       inicio
       retorne impostoSobreSalario(salario) + impostoSobreServicos(servicos)+ impostoSobreGC(gc)
fimfuncao

funcao abatimento(salario: real; servicos: real; gc: real; gastosMedicos: real;gastosEducacionais: real) : real
   inicio
  se gastosMedicos + gastosEducacionais < 0.3 * impostoBrutoTotal(salario, servicos,gc) entao
     retorne gastosMedicos + gastosEducacionais
     senao
      retorne 0.3 * impostoBrutoTotal(salario,servicos,gc)
   fimse
fimfuncao


Algoritmo "desafio_contribuintes"



Var
  rendaAnual,rendaServicos,ganhoCapital:real
  gastoEducacional,gastoMedico:real
Inicio

escreval("Digite os dados do contribuinte: ")
escreva("Renda anual com salário: ")
leia(rendaAnual)
escreva("Renda anual com prestação de serviço: ")
leia(rendaServicos)
escreva("Renda anual com ganho de capital: ")
leia(ganhoCapital)
escreva("Gastos médicos: ")
leia(gastoMedico)
escreva("Gastos educacionais: ")
leia(gastoEducacional)

escreval
escreval("RELATÓRIO: ")
escreval("Imposto sobre salário: ",impostoSobreSalario(rendaAnual):7:2)
escreval("Imposto sobre serviços: ", impostoSobreServicos(rendaServicos):6:2)
escreval("Imposto sobre ganho de capital: ", impostoSobreGC(ganhoCapital):6:2)
escreval("Imposto bruto total: ", impostoBrutoTotal(rendaAnual,rendaServicos,ganhoCapital):6:2)
escreval("Abatimento: ", abatimento(rendaAnual,rendaServicos,ganhoCapital,gastoMedico,gastoEducacional):6:2)
escreval("Imposto devido: ", (impostoBrutoTotal(rendaAnual,rendaServicos,ganhoCapital) - abatimento(rendaAnual,rendaServicos,ganhoCapital,gastoMedico,gastoEducacional)):7:2)
Fimalgoritmo



