ArtBuzzSF::Application.routes.draw do

  resources :tweets
  resources :events

  root "pages#index"
  get "sitemap.xml" => "pages#sitemap", format: :xml, as: :sitemap
  get "robots.txt" => "pages#robots", format: :text, as: :robots

end
