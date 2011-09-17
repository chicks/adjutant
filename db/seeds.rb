# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Daley', city: cities.first)
u   = FactoryGirl.create(:user)
c1  = FactoryGirl.create(:context)
c2  = FactoryGirl.create(:context, name: "Lackawanna County Sherrif's Department")

u.contexts = [c1, c2]
u.save

i1  = FactoryGirl.build(:identity)
i2  = FactoryGirl.build(:identity, sync_time: 13.days.ago )
i3  = FactoryGirl.build(:identity, sync_time:  2.days.ago )
i4  = FactoryGirl.build(:identity, sync_time:  9.days.ago )
i5  = FactoryGirl.build(:identity, sync_time:  20.days.ago )
i6  = FactoryGirl.build(:identity, sync_time:  456.days.ago )

ip1 = FactoryGirl.build(:identity_provider)
ip2 = FactoryGirl.build(:identity_provider, name: "Intranet")
ip3 = FactoryGirl.build(:identity_provider, name: "Wiki")
ip4 = FactoryGirl.build(:identity_provider, name: "Wikipedia")
ip5 = FactoryGirl.build(:identity_provider, name: "Gmail")

i1.identity_provider = ip1
i2.identity_provider = ip2
i3.identity_provider = ip3
i4.identity_provider = ip4
i5.identity_provider = ip5
i6.identity_provider = ip5

c1.identities = [i1, i2, i3]
c1.save

c2.identities = [i4, i5, i6]
c2.save