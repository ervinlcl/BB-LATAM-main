Rails.application.routes.draw do
  resources :newsletterusers
  resources :columnists
  resources :companies
  get 'sessions/new'
  resources :sessions
  resources :users
  resources :subcategories
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "columnista" => "home#columnista", :as => "columnista" 
  root :to => 'home#index'
  get "pach" => "home#pach", :as => "pach" 
  get "editsubcategoria" => "home#editsubcategoria", :as => "editsubcategoria"
  get "editcategoria" => "home#editcategoria", :as => "editcategoria"
  get "eliminarsubcategoria" => "home#eliminarsubcategoria", :as => "eliminarsubcategoria"
  get "eliminarcategoria" => "home#eliminarcategoria", :as => "eliminarcategoria"
  get "terms" => "home#terms", :as => "terms"  
  get "privacy" => "home#privacy", :as => "privacy"
  get "post_detail" => "home#post_detail", :as => "post_detail"
  get "eliminarcolumnist" => "home#eliminarcolumnist", :as => "eliminarcolumnist"
  get "editcolumnist" => "home#editcolumnist", :as => "editcolumnist"
  get "eliminarcompany" => "home#eliminarcompany", :as => "eliminarcompany"
  get "eliminarpost" => "home#eliminarpost", :as => "eliminarpost"
  get "editpost" => "home#editpost", :as => "editpost"
  get "editcompany" => "home#editcompany", :as => "editcompany"
  get "delete_all_posts" => "home#delete_all_posts", :as => "delete_all_posts"
  get "admin" => "home#admin", :as => "admin"
  get "comunity" => "home#comunity", :as => "comunity"
  get "about" => "home#about", :as => "about"
  get "blog" => "home#blog", :as => "blog"
  get "contacto" => "home#contacto", :as => "contacto"
  get "services" => "home#services", :as => "services"
  get "logoutadmin" => "sessions#destroy", :as => "logoutadmin"
  get "loginadmin" => "sessions#create", :as => "loginadmin"
  get "thankyou_contact" => "home#thankyou_contact", :as => "thankyou_contact"
  get "fillall" => "home#fillall", :as => "fillall"
  post "sendContactRequest" => "home#sendContactRequest", :as => "sendContactRequest"
  post "sendNewsletter" => "home#sendNewsletter", :as => "sendNewsletter"
  get "thankyou_newsletter" => "home#thankyou_newsletter", :as => "thankyou_newsletter"
  get "search" => "home#search", :as => "search"
  get "service_propiedad_intelectual" => "home#service_propiedad_intelectual", :as => "service_propiedad_intelectual"
  get "service_liderazgo" => "home#service_liderazgo", :as => "service_liderazgo"
  get "service_coaching" => "home#service_coaching", :as => "service_coaching"
  get "columnistas" => "home#columnistas", :as => "columnistas"
  get "columnista_detalle" => "home#columnista_detalle", :as => "columnista_detalle"
  get "/empresa/:id", :controller => "home", :action => "empresa"
  get "/publicacion/:id", :controller => "home", :action => "publicacion"
  get "/columnista/:id", :controller => "home", :action => "columnista"
end
