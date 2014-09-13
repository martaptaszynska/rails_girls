# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  photo_url   :string(255)
#  date        :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

class Photo < ActiveRecord::Base
  default_scope {order('likes DESC')}
  
end
