# == Schema Information
#
# Table name: channels
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  channel_no :integer
#  created_at :datetime
#  updated_at :datetime
#

class Channel < ActiveRecord::Base
  
  has_many :tv_shows, :primary_key => "channel_no"
  
end
