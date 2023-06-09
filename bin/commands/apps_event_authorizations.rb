# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'AppsEventAuthorizations methods.'
      command 'apps_event_authorizations' do |g|
        g.desc 'Get a list of authorizations for the given event context. Each authorization represents an app installation that the event is visible to.'
        g.long_desc %( Get a list of authorizations for the given event context. Each authorization represents an app installation that the event is visible to. )
        g.command 'list' do |c|
          c.flag 'event_context', desc: '.'
          c.flag 'cursor', desc: '.'
          c.flag 'limit', desc: '.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.apps_event_authorizations_list(options))
          end
        end
      end
    end
  end
end
