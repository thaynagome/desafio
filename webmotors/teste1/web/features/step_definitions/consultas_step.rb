#Acessa o site
Dado('que usuário acesse o site WebMotors') do
  visit 'https://www.webmotors.com.br/'
  #visit 'https://www.webmotors.com.br/carros-economicos/carros/sp-barueri?estadocidade=S%C3%A3o%20Paulo%20-%20Barueri&necessidade=Carros%20econ%C3%B4micos&idcmpint=t1:c17:m07:webmotors:busque-por-categorias::carros-economicos:comprar'
  #visit 'https://www.webmotors.com.br/comprar/fiat/argo/13-firefly-flex-trekking-manual/0-portas/2020/38806697?pos=a38806697c:&np=1&ct=1840156'
  
  sleep 50
end

#Clica no botão 'Carro economico'
Dado('clicar na opção {string}') do |economico|
  click_link 'Carros econômicos'
  #find('#searchBar').set 'Montana'
  #click_link 'Chevrolet'
  #click_on(class: 'Button Button--red-home')
  #click_on(class: 'Menu-User__list-links__navigation__item')
  #sleep 50
end

Quando('escolher anuncio especifico') do 
  click_link 'FIAT ARGO'
  #find("#CardVehicle__linkPhoto").click
  #element = driver.find_elements(:class,'CardVehicle__linkPhoto')[0].click
  #click_on(class: 'sc-gxMtzJ sc-dfVpRl ewffVg')
  #sleep 50
end


Quando('preencher campos {string}, {string}, {string} e {string}') do |nome, email, telefone, mensagem|
  #find('Form__field--name').set 'Teste Web Motors'
  find("Form__field--name", match: :first).set 'Teste Web Motors'
  find('#email').set Faker::Internet.free_email
  find('#numberPhone').set  Faker::Número.número(dígitos: 10)
  sleep 50

end

Então('{string}') do |enviar|
  click_button 'ButtonSendProposal'
end