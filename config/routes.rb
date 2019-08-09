Rails.application.routes.draw do
  root 'politicians#index'
  get '/ranking', to: 'politicians#ranking'
  get '/update_ranking', to: 'politicians#update_ranking'
end
