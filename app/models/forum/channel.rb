class Forum::Channel < ActiveRecord::Base
  has_many :messages, class_name: 'Forum::Message'
end
