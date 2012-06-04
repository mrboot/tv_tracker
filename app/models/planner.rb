# == Schema Information
#
# Table name: planners
#
#  id         :integer         not null, primary key
#  day        :string(255)
#  start_time :time
#  tv_show_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Planner < ActiveRecord::Base

	belongs_to :tv_show

	has_one :channel, :through => :tv_show

end
