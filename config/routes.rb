Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'hlavnistrana#index'
  get "/nemovitosti", to: "nemovitost#seznam"
  get "/nemovitosti/vytvorit", to: "nemovitost#vytvorit"
  post "/nemovitosti/ulozit", to: "nemovitost#ulozit"
  get "/nemovitosti/:id/editovat", to: "nemovitost#editovat", as: "nemovitost_editovat"
  patch "/nemovitosti/:id", to: "nemovitost#update"
end
