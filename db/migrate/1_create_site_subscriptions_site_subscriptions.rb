class CreateSiteSubscriptionsSiteSubscriptions < ActiveRecord::Migration

  def up
    create_table :refinery_site_subscriptions do |t|
      t.datetime :date
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-site_subscriptions"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/site_subscriptions/site_subscriptions"})
    end

    drop_table :refinery_site_subscriptions

  end

end
