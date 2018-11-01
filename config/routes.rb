Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb '/urls' => 'namespace/controllers#action'

  namespace :api do
    #carted_products
    get '/carted_products' => 'carted_products#index'
    post '/carted_products' => 'carted_products#create'

    # products
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
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



    ## orders
    get '/orders' => 'orders#index'
    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show'


    ## images
    get '/images' => 'images#index'
    get '/images/:id' => 'images#show'


    # users
    get '/users/:id' => 'users#show'
    post '/users' => 'users#create'


    # sessions
    post '/sessions' => 'sessions#create'
  end
end
