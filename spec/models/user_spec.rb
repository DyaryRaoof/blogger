require 'rails_helper'

RSpec.describe User, type: :model do
  subject {User.new(name: 'Dyary Raoof', bio: 'This is my bio', posts_counter: 0)}
  before(:all) do 
    Rails.application.load_seed
  end
  before {subject.save} 


  it 'name should not be empty or nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'posts_counter should not be below 0' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  it 'posts_counter should not be a string' do
    subject.posts_counter = 'sss'
    expect(subject).to_not be_valid
  end

  
  it 'length should be three' do
    posts = User.three_most_recent_posts(User.first.id)
    expect(posts.length).to eq(3)
  end

end
