require 'spec_helper'
require 'omniauth/hootsuite'

describe OmniAuth::Strategies::Hootsuite do
  subject { OmniAuth::Strategies::Hootsuite.new(nil, {}) }

  describe '#client' do
    it 'has correct site' do
      expect(subject.options.client_options['site']).to eq('https://apis.hootsuite.com/')
    end

    it 'has correct token URL' do
      expect(subject.options.client_options['token_url']).to eq('https://apis.hootsuite.com/auth/oauth/v2/token')
    end

    it 'has correct authorize URL' do
      expect(subject.options.client_options['authorize_url']).to eq('https://apis.hootsuite.com/auth/oauth/v2/authorize')
    end
  end

  describe '#info' do
    before :each do
      @raw_info = {
        'id' => 15240789,
        'email' => 'jsmith@test.com',
        'isActive' => true,
        'createdDate' => '2013-05-29T13:27:24Z',
        'modifiedDate' => '2013-05-29T13:27:24Z',
        'fullName' => 'Joe Smith',
        'companyName' => 'Hootsuite',
        'bio' => 'I am Joe Smith',
        'timezone' => 'America/Vancouver',
        'language' => 'en'
      }

      allow(subject).to receive(:raw_info) { @raw_info }
    end

    context 'when data is present in raw info' do
      it 'returns the name' do
        expect(subject.info[:name]).to eq('Joe Smith')
      end

      it 'returns the email' do
        expect(subject.info[:email]).to eq('jsmith@test.com')
      end
    end
  end
end
