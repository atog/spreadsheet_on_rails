Dummy::Application.routes.draw do
  match "/koala(.:format)", :to => "koala#index", :as => :koala
  match "/another(.:format)", :to => "koala#another", :as => :another
end
