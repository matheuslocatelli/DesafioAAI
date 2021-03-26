Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end



Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo termo {string}") do |query|
  @home_page.search(query)
end

Então("deve ser retornada a mensagem que não foram encontrados resultados") do
  expect(@search_page.alertwarning).to have_content 'No results were found'
end