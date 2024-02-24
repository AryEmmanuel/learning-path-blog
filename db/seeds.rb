# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.where(email: "aryemmanuel599@gmail.com").first_or_initialize
user.update!(
    password: "password",
    password_confirmation: "password"
)


100.times do |i|
    blog_post = BlogPost.where(title: "Blog post #{i}").first_or_initialize
    blog_post.update(content: "This is another blog post. Andrea preciosa. \n Lorem ipsum dolor sit amet.\n Another paragraph. Derwf ui, urhfur rgnsiug. Porigj u srgn, yuarfhpurgh.", published_at: Time.current)
end