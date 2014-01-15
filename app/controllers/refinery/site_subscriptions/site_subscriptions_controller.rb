module Refinery
  module SiteSubscriptions
    class SiteSubscriptionsController < ::ApplicationController

      before_filter :find_all_site_subscriptions
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @site_subscription in the line below:
        present(@page)
      end

      def show
        @site_subscription = SiteSubscription.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @site_subscription in the line below:
        present(@page)
      end

    protected

      def find_all_site_subscriptions
        @site_subscriptions = SiteSubscription.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/site_subscriptions").first
      end

    end
  end
end
