require 'rails_helper'

RSpec.describe 'Investments_controller_requests', type: :request do
  before(:all) do
    Rails.application.load_seed
  end

  describe 'GET #index' do
    before(:example) { get '/groups/1/investments' }

    it 'is receiving an Ok response from the server' do
      expect(response).to have_http_status(302)
    end

    it 'renders index template correctly' do
      expect(response).to redirect_to('/users/sign_in')
    end
  end
end
