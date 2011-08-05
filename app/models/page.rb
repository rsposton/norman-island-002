# == Schema Information
# Schema version: 20110802231629
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  subject_id :integer
#  name       :string(255)
#  permalink  :string(255)
#  position   :integer
#  visible    :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base

  belongs_to :subject
  has_many :sections
  has_and_belongs_to_many :editors, :class_name => "AdminUser"

  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

end
