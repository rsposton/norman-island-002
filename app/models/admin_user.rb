# == Schema Information
# Schema version: 20110804210426
#
# Table name: admin_users
#
#  id              :integer         not null, primary key
#  first_name      :string(25)
#  last_name       :string(50)
#  email           :string(100)     default(""), not null
#  hashed_password :string(40)
#  username        :string(25)
#  salt            :string(40)
#  created_at      :datetime
#  updated_at      :datetime
#

class AdminUser < ActiveRecord::Base

  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits

end
