Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/cardholders" => "cardholders#index"
    post "/cardholders" => "cardholders#create"  

    get "/card_actions" => "card_actions#index"
    post "/card_actions" => "card_actions#create"

  end
end
