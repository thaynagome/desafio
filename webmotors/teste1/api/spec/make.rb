Dado("acessar marca de veiculos") do                        
    begin 
        response = HTTParty.GET("https://desafioonline.webmotors.com.br:443/api/OnlineChallenge/Make")
        puts JSON.pretty_generate(JSON.parse(response.body))
        
    end
   end 
                                                                                 
                                                                                     
  Então("valido a o veiculo do registro") do                                         

    expect respond_to eq 200
    puts "Validar o retorno do codigo 200"
end   