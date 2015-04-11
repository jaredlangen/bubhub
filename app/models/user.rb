class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_uniqueness_of :email, :allow_blank => false, :case_sensitive => false
  validates_presence_of :pin
  validates_uniqueness_of :bu_id, :allow_blank => false

end
