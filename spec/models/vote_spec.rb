require 'rails_helper'

describe Vote do
  it { should validate_presence_of :vote }
end
