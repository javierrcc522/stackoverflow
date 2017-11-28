require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :image }
  it { should validate_presence_of :language }
end
