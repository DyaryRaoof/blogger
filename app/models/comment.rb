class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  def self.update_comments_counter_for_post(post_id)
    p = Post.find(post_id)
    p.comments_counter += 1
    p.save
  end
end
