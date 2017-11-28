class Vote < ActiveRecord::Base
  validates :vote, :presence => true
end
