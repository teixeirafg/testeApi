Quando('inserir {int} na API {string}') do |cep,status|
    @correios_httparty = CorreiosHttparty.new
    cep = "0#{cep}"if status.eql?('valido')
    @response = @correios_httparty.get_endereco_api_correios cep
  end
  
  Então('valido o retorno dos campos') do
    @correios_httparty.valida_endereco
  end

Então('exibo o código do IBGE') do
  @correios_httparty.valida_endereco
  puts 'O código do IBGE é:'+@response['ibge']
end

  
  Então('valido a mensagem de erro') do
    @correios_httparty.valida_cep_invalido
  end