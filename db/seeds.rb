get_data = RestClient.get('https://dadosabertos.camara.leg.br/api/v2/deputados?')

data = JSON.parse(get_data)

data['dados'].each_with_index do |politician, i|
  Politician.first_or_create(
    api_id: politician['id'],
    name: politician['nome'],
    party: politician['siglaPartido'],
    state: politician['siglaUf'],
    photo: politician['urlFoto']
  )

  Score.first_or_create(
    politician_id: (i + 1),
    rating: 1000,
    games_played: 0
  )
end

xmls = Nokogiri::XML(open('http://legis.senado.leg.br/dadosabertos/senador/lista/atual'))
last_politician_count = Politician.count

xmls.xpath('//Parlamentares//Parlamentar').each_with_index do |senator, i|
  api_id = senator.search("IdentificacaoParlamentar > CodigoParlamentar").text.to_i
  name = senator.search("IdentificacaoParlamentar > NomeParlamentar").text
  party = senator.search("IdentificacaoParlamentar > SiglaPartidoParlamentar").text
  state = senator.search("IdentificacaoParlamentar > UfParlamentar").text
  photo = senator.search("IdentificacaoParlamentar > UrlFotoParlamentar").text

  Politician.create!( api_id: api_id, name:   name, party:  party, state:  state, photo: photo)

  Score.create!(
    politician_id: (i+1+last_politician_count),
    rating: 1000,
    games_played: 0
  )
end
