# == Schema Information
# Schema version: 20110804213555
#
# Table name: section_edits
#
#  id            :integer         not null, primary key
#  admin_user_id :integer
#  section_id    :integer
#  summary       :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class SectionEdit < ActiveRecord::Base
  
  belongs_to :editor, :class_name => "AdminUser", :foreign_key => 'admin_user_id'
  belongs_to :section

end
