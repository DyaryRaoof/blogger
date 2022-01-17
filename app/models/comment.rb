class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post

  def update_comments_counter_for_post
    p = Post.find(post_id)
    p.comments_counter += 1
    p.save
  end
end
