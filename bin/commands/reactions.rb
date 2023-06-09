# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'Reactions methods.'
      command 'reactions' do |g|
        g.desc 'Adds a reaction to an item.'
        g.long_desc %( Adds a reaction to an item. )
        g.command 'add' do |c|
          c.flag 'channel', desc: 'Channel where the message to add reaction to was posted.'
          c.flag 'name', desc: 'Reaction (emoji) name.'
          c.flag 'timestamp', desc: 'Timestamp of the message to add reaction to.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.reactions_add(options))
          end
        end

        g.desc 'Gets reactions for an item.'
        g.long_desc %( Gets reactions for an item. )
        g.command 'get' do |c|
          c.flag 'channel', desc: 'Channel where the message to get reactions for was posted.'
          c.flag 'file', desc: 'File to get reactions for.'
          c.flag 'file_comment', desc: 'File comment to get reactions for.'
          c.flag 'full', desc: 'If true always return the complete reaction list.'
          c.flag 'timestamp', desc: 'Timestamp of the message to get reactions for.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.reactions_get(options))
          end
        end

        g.desc 'Lists reactions made by a user.'
        g.long_desc %( Lists reactions made by a user. )
        g.command 'list' do |c|
          c.flag 'cursor', desc: "Parameter for pagination. Set cursor equal to the next_cursor attribute returned by the previous request's response_metadata. This parameter is optional, but pagination is mandatory: the default value simply fetches the first 'page' of the collection. See pagination for more details."
          c.flag 'full', desc: 'If true always return the complete reaction list.'
          c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached."
          c.flag 'team_id', desc: 'encoded team id to list reactions in, required if org token is used.'
          c.flag 'user', desc: 'Show reactions made by this user. Defaults to the authed user.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.reactions_list(options))
          end
        end

        g.desc 'Removes a reaction from an item.'
        g.long_desc %( Removes a reaction from an item. )
        g.command 'remove' do |c|
          c.flag 'name', desc: 'Reaction (emoji) name.'
          c.flag 'channel', desc: 'Channel where the message to remove reaction from was posted.'
          c.flag 'file', desc: 'File to remove reaction from.'
          c.flag 'file_comment', desc: 'File comment to remove reaction from.'
          c.flag 'timestamp', desc: 'Timestamp of the message to remove reaction from.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.reactions_remove(options))
          end
        end
      end
    end
  end
end
