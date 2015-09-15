class User < ActiveRecord::Base

  validates :name, :presence => true
  validates :email, :presence => true
  validates :text, :presence => true

end
