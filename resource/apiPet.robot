***Settings*** 
Library        REST

***Variables***
@{animais}        Fernando         35          190
&{Fenando}        nome=Fernando    idade=35    altura=190cm
&{Vanderlan}      nome=Vanderlan   idade=38    altura=150cm  
${Vanderlan.altura}

***Keywords*** 
realizo o cadastro do PET "${cadastrando_PET}" na API
    POST    https://petstore.swagger.io/v2/pet   {"name": "Jake","photoUrls": ["fafa"],"id": ${Cadastrando_PET},"category": {"id": 59190497,"name": "vava"},"tags": [{"id": 2121,"name": "dodo"}],"status": "pending"}

O retorno do servico é "${status_code}"
    Integer     response status           ${status_code}

Realizo consulta de PET "${PET_cadastrado}"
    GET       https://petstore.swagger.io/v2/pet/${PET_cadastrado}     

O serviço retorna que PET esta cadastrado
    Integer     response status           200

Realizo a exclusao do PET "${PET_cadastrado}"
    DELETE    https://petstore.swagger.io/v2/pet/${PET_cadastrado}  
    



    
# O serviço retorna que PET "1" nao esta cadastrado
#     Log To Console                   ${RESPONSE.json()}   
#     Should Be Equal As Strings       ${RESPONSE.json()}[code]              200
#     Should Be Equal As Strings       ${RESPONSE.json()}[type]              unknown       

# Consultar API para o PET não existente "${IdPet}"
#     ${response}                      GET      https://petstore.swagger.io/v2/pet/${IdPet}    expected_status=404
#     ${RESPONSE}                      Set Global Variable                   ${response} 

# Consultar API e armazenar na variavel PET existente "${IdPet}"
#     ${response}                      GET      https://petstore.swagger.io/v2/pet/${IdPet}    expected_status=200
#     ${RESPONSE}                      Set Global Variable                   ${response} 

# Validar campos PET não encontrado
#     Log To Console                   ${RESPONSE.json()}
#     Should Be Equal As Strings       ${RESPONSE.json()}[type]              error
#     Should Be Equal As Strings       ${RESPONSE.json()}[message]           Pet not found



