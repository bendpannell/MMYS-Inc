class Channels < ActiveRecord::Base
  has_many :messages
end
