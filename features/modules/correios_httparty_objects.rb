module CorreiosHTTPartyObjects
    include HTTParty
    include RSpec::Matchers
    def get_endereco_api_correios cep
      @endereco = HTTParty.get "https://viacep.com.br/ws/#{cep}/json/"
    end
  
    def valida_endereco
      expect(@endereco["cep"]).to eql (ENDERECOS[:valido][:cep])
      expect(@endereco["logradouro"]).to eql (ENDERECOS[:valido][:logradouro])
      expect(@endereco["bairro"]).to eql (ENDERECOS[:valido][:bairro])
      expect(@endereco["localidade"]).to eql (ENDERECOS[:valido][:localidade])
      expect(@endereco["uf"]).to eql (ENDERECOS[:valido][:uf])
      expect(@endereco["cep"]).to eql (ENDERECOS[:valido][:cep])
      
    end
  
    def valida_cep_invalido
      expect(@endereco.code).to eql 400
    end
  
  end