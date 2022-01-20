require 'rails_helper'

RSpec.describe 'users', type: :request do
  describe 'GET /users' do
    it 'works! returns correct status code' do
      get users_path
      expect(response).to have_http_status(200)
    end

    it 'works! renders index view correctly' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'works! reponse body includes Wendy ' do
      get users_path
      expect(response.body).to include('Wendy')
    end
  end

  describe 'GET /users/:id' do
    it 'works! returns correct status code' do
      get user_path(User.first.id)
      expect(response).to have_http_status(200)
    end

    it 'works! renders show view correctly' do
      get user_path(User.first.id)
      expect(response).to render_template(:show)
    end

    it 'works! reponse body includes Wendy' do
      get user_path(User.first.id)
      expect(response.body).to include('Wendy')
    end
  end
end
