# frozen_string_literal: true

require_relative "desafio_de_rails_avancado/version"
require 'jwt'

module DesafioDeRailsAvancado
  class Erro < StandardError; end

  class Criptografia

    def initialize(secret)
      raise DesafioDeRailsAvancado::Erro.new("Você precisa passar qual é o segredo") if secret.nil? || secret.empty?
      @hmac_secret = secret
    end

    def criptografar(item)
      raise DesafioDeRailsAvancado::Erro.new("O item não pode ser vazio") if item.nil? || item.empty?
      return JWT.encode item, @hmac_secret, 'HS256'
    end

    def descriptografar(token)
      raise DesafioDeRailsAvancado::Erro.new("O token não pode ser vazio") if token.nil? || token.empty?
      item, algorithm = JWT.decode token, @hmac_secret, true, { algorithm: 'HS256' }
      return item
    end

  end
end
