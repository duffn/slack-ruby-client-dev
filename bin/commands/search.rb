# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'Search methods.'
      command 'search' do |g|
        g.desc 'Searches for messages and files matching a query.'
        g.long_desc %( Searches for messages and files matching a query. )
        g.command 'all' do |c|
          c.flag 'query', desc: 'Search query. May contains booleans, etc.'
          c.flag 'highlight', desc: 'Pass a value of true to enable query highlight markers (see below).'
          c.flag 'sort', desc: 'Return matches sorted by either score or timestamp.'
          c.flag 'sort_dir', desc: 'Change sort direction to ascending (asc) or descending (desc).'
          c.flag 'team_id', desc: 'encoded team id to search in, required if org token is used.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.search_all(options))
          end
        end

        g.desc 'Searches for files matching a query.'
        g.long_desc %( Searches for files matching a query. )
        g.command 'files' do |c|
          c.flag 'query', desc: 'Search query.'
          c.flag 'highlight', desc: 'Pass a value of true to enable query highlight markers (see below).'
          c.flag 'sort', desc: 'Return matches sorted by either score or timestamp.'
          c.flag 'sort_dir', desc: 'Change sort direction to ascending (asc) or descending (desc).'
          c.flag 'team_id', desc: 'encoded team id to search in, required if org token is used.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.search_files(options))
          end
        end

        g.desc 'Searches for messages matching a query.'
        g.long_desc %( Searches for messages matching a query. )
        g.command 'messages' do |c|
          c.flag 'query', desc: 'Search query.'
          c.flag 'cursor', desc: "Use this when getting results with cursormark pagination. For first call send * for subsequent calls, send the value of next_cursor returned in the previous call's results."
          c.flag 'highlight', desc: 'Pass a value of true to enable query highlight markers (see below).'
          c.flag 'sort', desc: 'Return matches sorted by either score or timestamp.'
          c.flag 'sort_dir', desc: 'Change sort direction to ascending (asc) or descending (desc).'
          c.flag 'team_id', desc: 'encoded team id to search in, required if org token is used.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.search_messages(options))
          end
        end
      end
    end
  end
end
