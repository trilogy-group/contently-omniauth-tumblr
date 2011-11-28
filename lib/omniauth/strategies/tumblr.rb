require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Tumblr < OmniAuth::Strategies::OAuth
      option :name, "tumblr"

      option :client_options, {
         :site => 'http://www.tumblr.com',
         :request_token_path => '/oauth/request_token',
         :access_token_path => '/oauth/access_token',
         :authorize_url => 'http://www.tumblr.com/api/authenticate'
      }

      uid { user['name'] }

      info do i
        {
          'nickname' => user['name'],
          'name' => user['title'],
          'image' => user['avatar_url'],
          'urls' => {
            'website' => user['url']
          }
        }
      end

      extra do 
        { 
          'user' => user,
          'raw_info' => raw_info
        }
      end

      def user
        tumblelogs = raw_info['tumblr']['tumblelog']
        if tumblelogs.kind_of?(Array)
          @user ||= tumblelogs[0]
        else
          @user ||= tumblelogs
        end
      end

      def raw_info
        url = 'http://www.tumblr.com/api/authenticate'
        @raw_info ||= MultiXml.parse(access_token.get(url).body)
      end
    end
  end
end