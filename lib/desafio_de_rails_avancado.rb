# frozen_string_literal: true

require_relative "desafio_de_rails_avancado/version"

module DesafioDeRailsAvancado
  class Error < StandardError; end

  class Criptografia

    def initialize
      @hmac_secret = 'DesafioMaisQue21DiasDeRailsAvancado'
    end

    def criptografar(payload)
      raise Error("O payload não pode ser vazio") if payload.empty? || payload.nil?
      return JWT.encode payload, @hmac_secret, 'HS256'
    end

    def descriptografar(token)
      raise Error("O token não pode ser vazio") if payload.empty? || payload.nil?
      return JWT.decode token, @hmac_secret, true, { algorithm: 'HS256' }
    end

  end
end
