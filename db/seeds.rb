Post.destroy_all
Comment.destroy_all


2.times do |i|
  user = User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(8),
    admin: false
  )
  5.times do |i|
   post = user.posts.create!(
     image: "https://www.smashingmagazine.com/wp-content/uploads/2015/06/10-dithering-opt.jpg",
     content: Faker::Friends.quote
     )
   3.times do |i|
     comment = post.comments.create!(
         content: Faker::TwinPeaks.quote,
         user_id: Faker::Number.between(1, 2)
         )
   end
  end
end

p "Created #{Post.count} posts"

# once initially set up/to edit must run 'rake db:setup'
# also 'rake db:test:prepare'
