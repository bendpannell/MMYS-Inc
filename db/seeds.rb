# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = Sponsors.create(name: 'BC Awards', image: 'BC_Logo.png', website: 'http://www.bcawardsinc.com')
s2 = Sponsors.create(name: 'IOM', image: 'IOM_Logo.png', website: 'http://www.iomsa.com')

channels = Channel.create(topic: 'Hello World', posts: '0')
messages = Message.create(content: 'This is the first message')