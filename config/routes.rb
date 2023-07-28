Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/fortune", controller: "my_examples", action: "tell_fortune"

  get "/lotto", controller: "my_examples", action: "numbers"
  # Defines the root path route ("/")
  # root "articles#index"

  get "/song", controller: "my_examples", action: "bottles"
end
