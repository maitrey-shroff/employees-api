Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/show/:id", to: "employees#show"

  post "/create", to: "employees#create"
  delete "/delete/:id", to: "employees#destroy"
  patch "/update/:id", to: "employees#update"
  
end
