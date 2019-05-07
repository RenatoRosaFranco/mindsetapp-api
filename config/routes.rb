# frozen_string_literal: true
Rails.application.routes.draw do

  devise_for :users
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
