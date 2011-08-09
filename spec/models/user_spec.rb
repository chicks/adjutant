require 'spec_helper'

describe User do
  it { should be_kind_of(Mongoid::Document) }
  describe "#flatten_identities" do
    let(:identity) { Fabricate(:dshrute_dm_ad) }
    it "returns the context assigned to the identity" do
      pp identity.context
      pp identity.context.persisted?
      identity.save
      pp identity.context.persisted?
      pp identity.context.save!
      pp identity.context.persisted?
      pp identity.user.identities.first.context
      
      #user.flatten_identities.keys.first.should == "Dunder Mifflin"
    end
  end
end