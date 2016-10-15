Rails.application.routes.draw do

  devise_for :users
	resources :posts do #nesting the routes of comments all
											#comments are belong to posts
		resources :comments
	end
	root "posts#index"
	get '/about', to: 'pages#about'
end
