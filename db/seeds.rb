# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Daley', city: cities.first)
u   = FactoryGirl.create(:user)
c   = FactoryGirl.create(:context)
u.contexts = [c]
u.save

i1  = FactoryGirl.build(:identity)
i2  = FactoryGirl.build(:identity, sync_time: 13.days.ago )
i3  = FactoryGirl.build(:identity, sync_time:  2.days.ago )

ip1 = FactoryGirl.build(:identity_provider)
ip2 = FactoryGirl.build(:identity_provider, name: "Intranet")
ip3 = FactoryGirl.build(:identity_provider, name: "Wiki")

i1.identity_provider = ip1
i2.identity_provider = ip2
i3.identity_provider = ip3

c.identities = [i1, i2, i3]
c.save

# 
# c.identities = [i1, i2, i3]
# c.save
# u.save
# 
