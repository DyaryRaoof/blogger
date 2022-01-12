require 'rails_helper'

RSpec.describe 'GET users', type: :request do
  it 'works! returns correct status code' do
    get users_path
    expect(response).to have_http_status(200)
  end

  it 'works! renders index view correctly' do
    get users_path
    expect(response).to render_template(:index)
  end

  it 'works! reponse body includes <h1>This is a list of users<h1> ' do
    get users_path
    expect(response.body).to include('<h1>This is a list of users<h1>')
  end
end

RSpec.describe 'GET users/:id', type: :request do
  it 'works! returns correct status code' do
    get user_path(1)
    expect(response).to have_http_status(200)
  end

  it 'works! renders show view correctly' do
    get user_path(1)
    expect(response).to render_template(:show)
  end

  it 'works! reponse body includes <h1>this is a single user </h1>' do
    get user_path(1)
    expect(response.body).to include('<h1>this is a single user </h1>')
  end
end
