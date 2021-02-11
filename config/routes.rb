Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/api/places" => "places#index"
    post "/api/places" => "places#create"
    get "/api/places/:id" => "places#show"
    patch "/api/places/:id" => "places#update"
    delete "/api/places/:id" => "places#destroy"
  end
end
