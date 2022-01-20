require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:all) do
    Rails.application.load_seed
  end

  it 'likes counter should be 1' do
    Like.update_likes_counter_for_post(User.first.posts.first.id)
    likes_count = User.first.posts.first.likes_counter
    expect(likes_count).to eq(1)
  end
end
