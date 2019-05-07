Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # API End Points
  namespace :api, constraint: { subdomain: 'api' } do
  	namespace :v1 do
	  	resources :ideas do
	  		resources :comments
	  		resources :reviews
		  end
		end
	end
end
