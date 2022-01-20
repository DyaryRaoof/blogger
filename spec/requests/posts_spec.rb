require 'rails_helper'

RSpec.describe 'posts', type: :request do
  describe 'GET /posts' do
    it 'works! returns correct status code' do
      get user_posts_path(user_id: User.first.id)
      expect(response).to have_http_status(200)
    end

    it 'works!  renders index view correctly' do
      get user_posts_path(user_id: User.first.id)
      expect(response).to render_template(:index)
    end

    it 'works! reponse body includes Wendy: Absolutely amazing 5' do
      get user_posts_path(user_id: User.first.id)
      expect(response.body).to include('Wendy: Absolutely amazing 5')
    end
  end

  describe 'GET /posts/:id' do
    it 'works! returns correct status code' do
      get user_post_path(User.first.id, id: Post.first.id)
      expect(response).to have_http_status(200)
    end

    it 'works!  renders show view correctly' do
      get user_post_path(User.first.id, id: Post.first.id)
      expect(response).to render_template(:show)
    end

    it 'works! reponse body includes Cats and Dogs 1 by Wendy ' do
      get user_post_path(User.first.id, id: Post.first.id)
      expect(response.body).to include('Cats and Dogs 1 by Wendy')
    end
  end
end
