Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'politicians#index'
  get 'ranking', to: 'politicians#ranking'
  get 'comparison', to: 'politicians#comparison'
end
