class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  def update_comments_counter_for_post
    p = Post.find(post_id)
    p.comments_counter += 1
    p.save
  end
end
