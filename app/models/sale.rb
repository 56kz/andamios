# == Schema Information
#
# Table name: sales
#
#  id          :integer          not null, primary key
#  date        :date
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer
#  product_id  :integer
#

class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product
end
