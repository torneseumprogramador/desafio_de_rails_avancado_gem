# frozen_string_literal: true

RSpec.describe DesafioDeRailsAvancado do
  it "verifica se a versão está presente" do
    expect(DesafioDeRailsAvancado::VERSION).not_to be nil
  end

  it "Utilizando minha criptografia" do
    # Arrange (Organizar nossas variáveis)
    meu_nome = "Walter Paulo"
    cripto = DesafioDeRailsAvancado::Criptografia.new('DesafioMaisQue21DiasDeRailsAvancado')

    # Act (Executar ação para o teste)
    token = cripto.criptografar(meu_nome)

    # Assert (Validar o resultado da ação)
    expect(token).to match(/\A[a-zA-Z0-9-_.]+\.[a-zA-Z0-9-_.]+\.[a-zA-Z0-9-_.]+\z/)
  end

  it "Utilizando minha criptografia com valor nil" do
    # Arrange (Organizar nossas variáveis)
    cripto = DesafioDeRailsAvancado::Criptografia.new('DesafioMaisQue21DiasDeRailsAvancado')

    # Act & Assert
    expect { cripto.criptografar(nil) }.to raise_error(DesafioDeRailsAvancado::Erro, "O item não pode ser vazio")
  end

  it "Utilizando minha decriptografia" do
    # Arrange (Organizar nossas variáveis)
    meu_nome = "Walter Paulo"
    cripto = DesafioDeRailsAvancado::Criptografia.new('DesafioMaisQue21DiasDeRailsAvancado')
    token = cripto.criptografar(meu_nome)

    # Act (Executar ação para o teste)
    item_decriptografado = cripto.descriptografar(token)

    # Assert (Validar o resultado da ação)
    expect(item_decriptografado).to eq(meu_nome)
  end

  it "Criando instancia, passando token no construtor" do
    # Arrange & Act 
    cripto = DesafioDeRailsAvancado::Criptografia.new('DesafioMaisQue21DiasDeRailsAvancado')

    # Assert (Validar o resultado da ação)
    expect(cripto).not_to be_nil
  end

  it "Criando instancia, sem passar token no construtor" do
    # Arrange & Act & Assert
    expect { DesafioDeRailsAvancado::Criptografia.new }.to raise_error(ArgumentError)
  end

  it "Criando instancia, passando empty no construtor" do
    # Arrange & Act & Assert
    expect { DesafioDeRailsAvancado::Criptografia.new("") }.to raise_error(DesafioDeRailsAvancado::Erro, "Você precisa passar qual é o segredo")
  end

  it "Criando instancia, passando nil no construtor" do
    # Arrange & Act & Assert
    expect { DesafioDeRailsAvancado::Criptografia.new(nil) }.to raise_error(DesafioDeRailsAvancado::Erro, "Você precisa passar qual é o segredo")
  end
  
end
