# == Schema Information
# Schema version: 20110802231629
#
# Table name: sections
#
#  id           :integer         not null, primary key
#  page_id      :integer
#  name         :string(255)
#  position     :integer
#  visible      :boolean
#  content_type :string(255)
#  content      :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Section < ActiveRecord::Base

  belongs_to :page
  has_many :section_edits
  has_many :editors, :through => :section_edits, :class_name => "AdminUser"

end
