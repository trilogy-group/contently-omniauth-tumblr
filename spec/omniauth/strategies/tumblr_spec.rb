require 'spec_helper'

describe "OmniAuth::Strategies::Tumblr" do
  subject do
    OmniAuth::Strategies::Tumblr.new(nil, @options || {})
  end

  #it_should_behave_like 'an oauth strategy'

 context 'client options' do
    it 'has correct Tumblr site' do
      subject.options.client_options.site.should eq('http://www.tumblr.com/')
    end

    it 'has correct request token path' do
      subject.options.client_options.request_token_path.should eq('/oauth/request_token')
    end

    it 'has correct access token path' do
      subject.options.client_options.access_token_path.should eq('/oauth/access_token')
    end

    it 'has correct authorize url' do
      subject.options.client_options.authorize_url.should eq('http://www.tumblr.com/api/authenticate')
    end
  end

end
