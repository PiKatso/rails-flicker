require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :posts }
  it { should have_many :comments }
  it { should validate_presence_of :encrypted_password }
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should validate_presence_of :admin }
  # pending "add some examples to (or delete) #{__FILE__}"
end
