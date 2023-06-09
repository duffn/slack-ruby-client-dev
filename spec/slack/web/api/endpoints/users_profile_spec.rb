# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::UsersProfile do
  let(:client) { Slack::Web::Client.new }
  context 'users.profile_set' do
    it 'encodes profile as json' do
      expect(client).to receive(:post).with('users.profile.set', {profile: %q[{"data":["data"]}]})
      client.users_profile_set(profile: {:data=>["data"]})
    end
  end
end
