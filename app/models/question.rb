class Question < ActiveRecord::Base
  belongs_to :user, optional: true
  has_many :answers

  validates :title, :presence => true
  validates :description, :presence => true
  validates :tag, :presence => true
end
