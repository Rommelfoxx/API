#PageObject

*** Settings ***    
Resource         ../resource/apiPet.robot

*** Test Cases ***
Cenário 1 - Cadastrando PET 
    #dado que o número do PET não esteja cadastrado previamente
    #quando
    realizo o cadastro do PET "10060" na API
    #então
    O retorno do servico é "200"

Cenário 2 - Consultando PET cadastrado
    #dado que 
    realizo o cadastro do PET "10060" na API
    #quando
    Realizo consulta de PET "10060"
    #então
    O retorno do servico é "200"

Cenário 3 - Excluindo PET cadastrado
    #dado
    realizo o cadastro do PET "10060" na API
    #quando
    Realizo a exclusao do PET "10060"
    #então
    O retorno do servico é "200"

Cenário 4 - Consultando PET não existente
    #dado
    Realizo a exclusao do PET "10060"
    #quando
    Realizo consulta de PET "10060"
    #então
    O retorno do servico é "404"
    





