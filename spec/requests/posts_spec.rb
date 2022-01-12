require 'rails_helper'

RSpec.describe 'posts', type: :request do
  describe 'GET /posts' do
    it 'works! returns correct status code' do
      get user_posts_path(user_id: 1)
      expect(response).to have_http_status(200)
    end

    it 'works!  renders index view correctly' do
      get user_posts_path(user_id: 1)
      expect(response).to render_template(:index)
    end

    it 'works! reponse body includes <h1>This is a list of posts<h1>' do
      get user_posts_path(user_id: 1)
      expect(response.body).to include('<h1>This is a list of posts<h1>')
    end
  end
end

RSpec.describe 'posts/:id', type: :request do
  describe 'GET /posts/:id' do
    it 'works! returns correct status code' do
      get user_post_path(1, id: 1)
      expect(response).to have_http_status(200)
    end

    it 'works!  renders show view correctly' do
      get user_post_path(1, id: 1)
      expect(response).to render_template(:show)
    end

    it 'works! reponse body includes <h1>this is a single post </h1> ' do
      get user_post_path(1, id: 1)
      expect(response.body).to include('<h1>this is a single post </h1>')
    end
  end
end
