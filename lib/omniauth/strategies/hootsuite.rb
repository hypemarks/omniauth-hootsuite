require 'multi_json'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Hootsuite < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://platform.hootsuite.com/',
        token_url: 'https://platform.hootsuite.com/oauth2/token',
        authorize_url: 'https://platform.hootsuite.com/oauth2/auth',
      }

      option :authorize_params, {
        response_type: "code",
        scope: "offline"
      }

      uid { raw_info['id'] }

      info do
        {
          name: raw_info['fullName'],
          email: raw_info['email']
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('https://platform.hootsuite.com/v1/me').body)['data']
      end

      def callback_phase
        request.params['state'] = session['omniauth.state'] unless request.params['state']
        super
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'hootsuite', 'Hootsuite'
