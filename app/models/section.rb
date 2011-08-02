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
end
