# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
end
