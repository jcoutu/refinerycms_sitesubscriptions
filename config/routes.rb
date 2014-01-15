Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :site_subscriptions do
    resources :site_subscriptions, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :site_subscriptions, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :site_subscriptions, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
