require_relative '../spec_helper'

describe 'index controller' do
  describe 'GET "/"' do
    it 'loads the homepage' do
      get('/')
      expect(last_response).to be_ok
    end
  end
end
