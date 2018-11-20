Rails.application.routes.draw do
	root 'attendees#index'
	resources :attendees

	post 'attendees-sync/Create', to: 'attendees_sync#create'
	put 'attendees-sync/Update/:id', to: 'attendees_sync#update'
	delete 'attendees-sync/Delete/:id', to: 'attendees_sync#delete'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
