FactoryGirl.define do
  factory(:user) do
    username('hazel')
    email('haxel@gmail.com')
    password('password')
    password_confirmation('password')
    admin(false)
  end
end
