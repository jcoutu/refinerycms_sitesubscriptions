module Refinery
  module SiteSubscriptions
    module Admin
      class SiteSubscriptionsController < ::Refinery::AdminController

        crudify :'refinery/site_subscriptions/site_subscription', :xhr_paging => true

      end
    end
  end
end
