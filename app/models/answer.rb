class Answer < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :tag, :presence => true
end
