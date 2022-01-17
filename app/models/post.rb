class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :comment
  has_many :like

  def update_posts_counter_for_user
    u = User.find(author_id)
    u.posts_counter += 1
    u.save
  end

  def five_most_recent_comments
    Comment.where(post_id: id).order(created_at: :desc).limit(5)
  end
end
