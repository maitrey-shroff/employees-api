Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get "/employees/:id", to: "employees#show"
      post "/create", to: "employees#create"
      delete "/delete/:id", to: "employees#destroy"
      patch "/update/:id", to: "employees#update"
    end

    namespace :v2 do
      get "/employees/:id", to: "employees#show"
      post "/create", to: "employees#create"
      delete "/delete/:id", to: "employees#destroy"
      patch "/update/:id", to: "employees#update"
    end
  end
  
end