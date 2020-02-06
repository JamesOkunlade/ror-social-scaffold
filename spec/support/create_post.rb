def create_post(content)
  sign_in_user
  Post.create!(user_id: User.first.id, content: content)
end
