Rails.application.routes.draw do


    devise_for :users
    root 'products#index'
    resources :orders

    resources :cart_items

   namespace :admin do
   resources :products
 end
   resources :products do
     member do
       post :add_to_cart
     end
   end
    resources :carts do
      collection do
        delete :clean
        post :checkout

      end
    end

    namespace :account do
      resources :orders
    end


     end
