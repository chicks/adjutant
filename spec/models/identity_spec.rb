require 'spec_helper'

describe Identity do
  it { should be_kind_of(Mongoid::Document) }
  let(:identity) { Fabricate(:dshrute_dm_ad) }
  describe "#context" do
    it "returns the assigned context" do
      identity.context.name.should == "Dunder Mifflin"
    end
  end
  describe "#identity_provider" do
    it "returns the identity_provider" do
      identity.identity_provider.name.should == "Active Directory"
    end
  end
  describe "#user" do
    it "returns the current user" do
      identity.user.name.should == "Dwight Shrute"
    end
  end
end