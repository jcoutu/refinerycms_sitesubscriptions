module Refinery
  module SiteSubscriptions
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::SiteSubscriptions

      engine_name :refinery_site_subscriptions

      initializer "register refinerycms_site_subscriptions plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "site_subscriptions"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.site_subscriptions_admin_site_subscriptions_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/site_subscriptions/site_subscription'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::SiteSubscriptions)
      end
    end
  end
end
