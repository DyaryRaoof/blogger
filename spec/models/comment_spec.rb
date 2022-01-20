require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:all) do 
    Rails.application.load_seed
  end

  it 'commemts_counter should be 1' do
    Comment.update_comments_counter_for_post(User.first.posts.first.id)
    comments_count = User.first.posts.first.comments_counter
    expect(comments_count).to eq(1)
  end
end
