# == Schema Information
# Schema version: 20110802231629
#
# Table name: subjects
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  position   :integer
#  visible    :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Subject < ActiveRecord::Base

  has_many :pages

  scope :visible, where(:visible => true)
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

end
