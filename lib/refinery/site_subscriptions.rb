require 'refinerycms-core'

module Refinery
  autoload :SiteSubscriptionsGenerator, 'generators/refinery/site_subscriptions_generator'

  module SiteSubscriptions
    require 'refinery/site_subscriptions/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
