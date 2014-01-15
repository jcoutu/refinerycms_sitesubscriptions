module Refinery
  module SiteSubscriptions
    class SiteSubscription < Refinery::Core::BaseModel
      self.table_name = 'refinery_site_subscriptions'

      attr_accessible :date, :position
      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        "Override def title in vendor/extensions/site_subscriptions/app/models/refinery/site_subscriptions/site_subscription.rb"
      end
    end
  end
end
