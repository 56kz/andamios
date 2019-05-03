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
  after_save :discount_quantity

  def verify_stock
    self.quantity > self.product.quantity ? false : true
  end

  def discount_quantity
    self.product.update(quantity: self.product.quantity - self.quantity)
  end

end
