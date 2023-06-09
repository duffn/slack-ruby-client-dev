# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'AdminTeamsSettings methods.'
      command 'admin_teams_settings' do |g|
        g.desc 'Fetch information about settings in a workspace'
        g.long_desc %( Fetch information about settings in a workspace )
        g.command 'info' do |c|
          c.flag 'team_id', desc: '.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_teams_settings_info(options))
          end
        end

        g.desc 'Set the default channels of a workspace.'
        g.long_desc %( Set the default channels of a workspace. )
        g.command 'setDefaultChannels' do |c|
          c.flag 'channel_ids', desc: 'An array of channel IDs.'
          c.flag 'team_id', desc: 'ID for the workspace to set the default channel for.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_teams_settings_setDefaultChannels(options))
          end
        end

        g.desc 'Set the description of a given workspace.'
        g.long_desc %( Set the description of a given workspace. )
        g.command 'setDescription' do |c|
          c.flag 'description', desc: 'The new description for the workspace.'
          c.flag 'team_id', desc: 'ID for the workspace to set the description for.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_teams_settings_setDescription(options))
          end
        end

        g.desc 'An API method that allows admins to set the discoverability of a given workspace'
        g.long_desc %( An API method that allows admins to set the discoverability of a given workspace )
        g.command 'setDiscoverability' do |c|
          c.flag 'discoverability', desc: "This workspace's discovery setting. It must be set to one of open, invite_only, closed, or unlisted."
          c.flag 'team_id', desc: 'The ID of the workspace to set discoverability on.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_teams_settings_setDiscoverability(options))
          end
        end

        g.desc 'Sets the icon of a workspace.'
        g.long_desc %( Sets the icon of a workspace. )
        g.command 'setIcon' do |c|
          c.flag 'image_url', desc: 'Image URL for the icon.'
          c.flag 'team_id', desc: 'ID for the workspace to set the icon for.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_teams_settings_setIcon(options))
          end
        end

        g.desc 'Set the name of a given workspace.'
        g.long_desc %( Set the name of a given workspace. )
        g.command 'setName' do |c|
          c.flag 'name', desc: 'The new name of the workspace.'
          c.flag 'team_id', desc: 'ID for the workspace to set the name for.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_teams_settings_setName(options))
          end
        end
      end
    end
  end
end
