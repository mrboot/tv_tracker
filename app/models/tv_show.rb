# == Schema Information
#
# Table name: tv_shows
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  season       :integer
#  currently_on :boolean
#  channel_id   :integer
#  last_on      :date
#  us_season    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class TvShow < ActiveRecord::Base
  
  belongs_to :channel, :primary_key => "channel_no"
  
end
