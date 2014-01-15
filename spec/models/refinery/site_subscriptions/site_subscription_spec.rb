require 'spec_helper'

module Refinery
  module SiteSubscriptions
    describe SiteSubscription do
      describe "validations" do
        subject do
          FactoryGirl.create(:site_subscription)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
