class User < ApplicationRecord
    has_many :comment
    has_many :like
    has_many :post

    def three_most_recent_posts
        Post.where(author_id: self.id).order(created_at: :desc).limit(3)
    end
end
