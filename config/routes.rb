DevalWww::Application.routes.draw do
 resources :evaluations, only:[:index, :show, :update, :create, :new]
end
