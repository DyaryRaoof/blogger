class Like < ApplicationRecord
    belongs_to :user, foreign_key: 'author_id'
    belongs_to :post

    def update_likes_counter_for_post
        p = Post.find(self.post_id)
        p.likes_counter += 1
        p.save
    end
end
