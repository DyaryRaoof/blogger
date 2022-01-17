class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def three_most_recent_posts
    Post.where(author_id: id).order(created_at: :desc).limit(3)
  end
end
