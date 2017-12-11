Dado("que eu realizo o login") do
    @login.load
    @login.entrar("will","will")
  end

Quando("entrar na tela de cadastro") do
    @home.entrar_cadastro
end

Então("acesso a aba Create e preencho os campos {string},{string},{string} para cadastrar") do |name, status, priority|
    @account.cadastrar(name,status,priority)
end

Quando("entrar na tela de View Tasks") do
    @home.entrar_editar
end

Então("vou acessar e editar uma task já criada mudando os campos {string},{string} do cadastro") do |name, description|
    @edit.editar(name,description)
end

Quando("estiver na tela de View Tasks") do
    @home.entrar_deletar
end

Então("vou acessar a tela de task, selecionar e excluir uma task já criada") do
    @delete.deletar
end