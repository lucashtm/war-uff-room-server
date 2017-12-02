Rails.application.routes.draw do

  resources :rooms, param: :code, defaults: { format: 'json' } do
    resources :players, param: :identity, defaults: { format: 'json' }
  end

end
