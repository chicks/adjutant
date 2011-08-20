# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Daley', city: cities.first)
u   = FactoryGirl.create(:user)
i1  = FactoryGirl.create(:identity)
i2  = FactoryGirl.create(:identity, last_sync: 13.days.ago )
i3  = FactoryGirl.create(:identity, last_sync:  2.days.ago )
c   = FactoryGirl.build(:context)
ip1 = FactoryGirl.build(:identity_provider)
ip2 = FactoryGirl.build(:identity_provider, name: "Intranet")
ip3 = FactoryGirl.build(:identity_provider, name: "Wiki")

u.identities = [i1, i2, i3]
u.save

i1.context = c
i1.identity_provider = ip1
i1.save

i2.context = c
i2.identity_provider = ip2
i2.save

i3.context = c
i3.identity_provider = ip3
i3.save