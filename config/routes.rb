Rails.application.routes.draw do
  resources :products do
    post :get_barcode, on: :collection
  end
  root 'visitors#index'

# rake routes
#               Prefix Verb   URI Pattern                     Controller#Action
# get_barcode_products POST   /products/get_barcode(.:format) products#get_barcode
#             products GET    /products(.:format)             products#index
#                      POST   /products(.:format)             products#create
#          new_product GET    /products/new(.:format)         products#new
#         edit_product GET    /products/:id/edit(.:format)    products#edit
#              product GET    /products/:id(.:format)         products#show
#                      PATCH  /products/:id(.:format)         products#update
#                      PUT    /products/:id(.:format)         products#update
#                      DELETE /products/:id(.:format)         products#destroy
#                 root GET    /                               visitors#index
end
