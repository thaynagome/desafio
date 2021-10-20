Dado("visualizar modelo do veiculo") do                        
    begin 
        response = HTTParty.GET("https://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=1")
        puts JSON.pretty_generate(JSON.parse(response.body))
        
    end
   end 
                                                                                 
                                                                                     
  Então("valido o modelo do registro") do                                         

    expect respond_to eq 200
    puts "Validar o retorno do codigo 200"
end   