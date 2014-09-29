Dummy::Application.routes.draw do
  get "/koala(.:format)", :to => "koala#index", :as => :koala
  get "/another(.:format)", :to => "koala#another", :as => :another
end
