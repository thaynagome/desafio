Dado("visualizar modelo do veiculo") do                        
    begin 
        response = HTTParty.GET("https://desafioonline.webmotors.com.br/api/OnlineChallenge/Version?ModelID=2")
        puts JSON.pretty_generate(JSON.parse(response.body))
        
    end
   end 
                                                                                 
                                                                                     
  Então("valido a versão do registro") do                                         

    expect respond_to eq 200
    puts "Validar o retorno do codigo 200"
end   