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
end
