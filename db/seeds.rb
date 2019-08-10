get_data = RestClient.get('https://dadosabertos.camara.leg.br/api/v2/deputados?')

data = JSON.parse(get_data)

data["dados"].each_with_index do |politician,i|
  Politician.create!(
    api_id: politician["id"],
    name:   politician["nome"],
    party:  politician["siglaPartido"],
    state:  politician["siglaUf"]
  )
  
  Score.create!(
    politician_id: (i+1),
    rating: 1000,
    games_played: 0
  )
end