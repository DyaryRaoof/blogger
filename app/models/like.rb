class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  def update_likes_counter_for_post
    p = Post.find(post_id)
    p.likes_counter += 1
    p.save
  end
end
