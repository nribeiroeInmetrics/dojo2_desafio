#language: pt
#utf-8

Funcionalidade: Criar login no site demo CRM
Eu como usuária 
Quero acessar o site demo CRM 
Para criar um login 

Contexto: Fazer login no site demo CRM
Dado que eu realizo o login

Esquema do Cenário: Cadastrar uma nova conta
	Quando entrar na tela de cadastro
	Então acesso a aba Create e preencho os campos "<name>","<status>","<priority>" para cadastrar 
	Exemplos:
	|  name  |  status   |    priority   |   
	|Natalia | Completed |      High     |  

Esquema do Cenário: Editar uma conta
	Quando entrar na tela de View Tasks
	Então vou acessar e editar uma task já criada mudando os campos "<name>","<description>" do cadastro
	Exemplos:
	|  name  |  description  |
	|  João  | Editar_teste  | 

Cenário: Excluir uma Task
	Quando estiver na tela de View Tasks
	Então vou acessar a tela de task, selecionar e excluir uma task já criada 
