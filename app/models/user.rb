class User < ActiveRecord::Base
  validates :name, :presence => true
  validates :language, :presence => true
  validates :image, :presence => true

  has_many :questions
end
