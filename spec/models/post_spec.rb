require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'This is my first post', text: 'Nice', likes_counter: 0, comments_counter: 0) }
  before(:all) do
    Rails.application.load_seed
  end
  before { subject.save }

  it 'title should not be empty or nil' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title should not be more than 250 chars' do
    subject.title = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Quisque accumsan dolor ornare, varius nisi in,
    aliquet ligula. Nam a erat et est elementum vestibulum. Morbi ligula diam,
    rhoncus sit amet erat quis, tincidunt aliquam velit.
    Donec vel ultricies ipsum, vitae pharetra purus. Curabitur bibendum faucibus nulla in congue.
    Maecenas venenatis ligula ante, sed consectetur urna pharetra vel.
    Sed sapien quam, consectetur nec euismod id, vulputate a arcu. Nunc vel maximus nulla.
    Pellentesque mattis massa sed consequat scelerisque. Morbi turpis orci, fringilla id leo et, blandit suscipit purus.
    Curabitur ante purus, facilisis quis nisl at, porta pulvinar tortor. Integer aliquet sed tellus sed pellentesque.
    Morbi porta, enim fringilla rhoncus sodales,
    nunc arcu ullamcorper erat, id tristique turpis lacus sit amet turpis.
    Vestibulum sagittis rhoncus ex id ultricies. Integer eget fermentum augue.
    Duis volutpat at libero eu congue. Cras mi magna, commodo sit amet dui id, l
    aoreet dignissim elit. Sed at iaculis sapien. Integer rhoncus eu sapien eget consequat.'

    expect(subject).to_not be_valid
  end

  it 'comments_counter should not be below 0' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes_counter should not be below 0' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'length should be 5' do
    comments = Post.five_most_recent_comments(User.first.id, User.first.posts.first.id)
    expect(comments.length).to eq(5)
  end

  it 'posts_counter should be ' do
    Post.update_posts_counter_for_user(User.first.id)
    Post.update_posts_counter_for_user(User.first.id)
    posts_count = User.first.posts_counter
    expect(posts_count).to eq(2)
  end
end
