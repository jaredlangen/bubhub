class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :pin, presence: true
  validates :bu_id, presence: true

end
