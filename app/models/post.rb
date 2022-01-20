class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comment
  has_many :like

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter,:likes_counter, comparison: {greater_than_or_equal_to: 0}, numericality: true

  def self.update_posts_counter_for_user(author_id)
    u = User.find(author_id)
    u.posts_counter += 1
    u.save
  end

  def self.five_most_recent_comments(author_id, post_id)
    Comment.where(author_id: author_id, post_id: post_id).order(created_at: :desc).limit(5)
  end
end
