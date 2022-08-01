Rails.application.routes.draw do
  get 'arrows/index'
  get 'arrows/show'

  get 'bows/index'
  get 'bows/show'

  get 'shields/index'
  get 'shields/show'

  get 'armors/index'
  get 'armors/show'

  get 'weapons/index'
  get 'weapons/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
