require 'spec_helper'

describe User do
  it { should be_kind_of(Mongoid::Document) }
  describe "#flatten_identities" do
    let(:identity) { Fabricate(:dshrute_dm_ad) }
    it "returns the context assigned to the identity" do
      pp identity.context
      #user.flatten_identities.keys.first.should == "Dunder Mifflin"
    end
  end
end