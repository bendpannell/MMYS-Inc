class Forum::Message < ActiveRecord::Base
  belongs_to :channel, class_name: 'Forum::Channel'
end
