# Objetivo

Uma gem criada para dar como exemplo no treinamento de rails avançado
link do conteúdo: https://www.torneseumprogramador.com.br/cursos/ruby_avancado/aulas
link para compra: https://www.torneseumprogramador.com.br/cursos/ruby_avancado


## Utilização

Para todar os testes da gem siga os passos abaixo:
```shell
bundle exec rspec
```


Para rodar o lint de validação de código siga os passoa abaixo:
```shell
bundle exec rubocop
```

Para fazer o build da gem:
```shell
bundle exec gem build desafio_de_rails_avancado.gemspec 
```


# Como utilizar
```ruby
meu_nome = "Walter Paulo"
cripto = DesafioDeRailsAvancado::Criptografia.new('MEU TOKEN')

token = cripto.criptografar(meu_nome)
# retorna o token "eyJhbGciOiJIUzI1NiJ9.IldhbHRlciBQYXVsbyI.rw-oUYTuy6V6FIlMmwUadbW8DvNc5NbStnEYCnsSL50"

item_decriptografado = cripto.descriptografar(token)
# retorna o valor "Walter Paulo"

```

