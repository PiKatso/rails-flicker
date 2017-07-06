require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :posts }
  it { should have_many :comments }
  it { should validate_presence_of :encrypted_password }
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'proves factory girl works' do
    user = FactoryGirl.build(:user)
    user.username.should eq "hazel"
  end

end
