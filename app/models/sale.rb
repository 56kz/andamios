# == Schema Information
#
# Table name: sales
#
#  id         :integer          not null, primary key
#  date       :date
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sale < ActiveRecord::Base
end
