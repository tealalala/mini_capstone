Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    # products CRUD
    # index
    get '/products' => 'products#index'

    #show
    get '/products/:id' => 'products#show'

    # create
    post '/products' => 'products#create'

    # update
    patch '/products/:id' => 'products#update'

    # # suppliers CRUD
    # # index
    # get '/suppliers' => 'suppliers#index'
    #
    # #show
    # get '/suppliers/:id' => 'suppliers#show'
    #
    # # create
    # post '/suppliers' => 'suppliers#create'
    #
    # # update
    # patch '/suppliers/:id' => 'suppliers#update'

    # images
    # index
    get '/images' => 'images#index'
    # show
    get '/images/:id' => 'images#show'

    # users
    # show
    get "/users/:id" => "users#show"
    # create
    post "/users" => "users#create"

    # sessions
    # create
    post "/sessions" => "sessions#create"
  end
end
