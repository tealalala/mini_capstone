Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    # index
    get '/products' => 'products#index'

    #show
    get '/products/:id' => 'products#show'

    # create
    post '/products' => 'products#create'

    # update
    # patch '/products' => 'products#update'
  end

end
