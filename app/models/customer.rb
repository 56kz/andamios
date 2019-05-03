# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  company    :string
#  email      :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sector_id  :integer
#

class Customer < ActiveRecord::Base
  belongs_to :sector
  has_many :sales
end
