# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module AdminBarriers
          #
          # Create an Information Barrier
          #
          # @option options [array] :barriered_from_usergroup_ids
          #   A list of IDP Groups ids that the primary usergroup is to be barriered from.
          # @option options [Object] :primary_usergroup_id
          #   The id of the primary IDP Group.
          # @option options [array] :restricted_subjects
          #   What kind of interactions are blocked by this barrier? For v1, we only support a list of all 3, eg im, mpim, call.
          # @see https://api.slack.com/methods/admin.barriers.create
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.barriers/admin.barriers.create.json
          def admin_barriers_create(options = {})
            raise ArgumentError, 'Required arguments :barriered_from_usergroup_ids missing' if options[:barriered_from_usergroup_ids].nil?
            raise ArgumentError, 'Required arguments :primary_usergroup_id missing' if options[:primary_usergroup_id].nil?
            raise ArgumentError, 'Required arguments :restricted_subjects missing' if options[:restricted_subjects].nil?
            post('admin.barriers.create', options)
          end

          #
          # Delete an existing Information Barrier
          #
          # @option options [Object] :barrier_id
          #   The ID of the barrier you're trying to delete.
          # @see https://api.slack.com/methods/admin.barriers.delete
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.barriers/admin.barriers.delete.json
          def admin_barriers_delete(options = {})
            raise ArgumentError, 'Required arguments :barrier_id missing' if options[:barrier_id].nil?
            post('admin.barriers.delete', options)
          end

          #
          # Get all Information Barriers for your organization
          #
          # @option options [string] :cursor
          #   Set cursor to next_cursor returned by the previous call to list items in the next page.
          # @option options [integer] :limit
          #   The maximum number of items to return. Must be between 1 - 1000 both inclusive.
          # @see https://api.slack.com/methods/admin.barriers.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.barriers/admin.barriers.list.json
          def admin_barriers_list(options = {})
            if block_given?
              Pagination::Cursor.new(self, :admin_barriers_list, options).each do |page|
                yield page
              end
            else
              post('admin.barriers.list', options)
            end
          end

          #
          # Update an existing Information Barrier
          #
          # @option options [Object] :barrier_id
          #   The ID of the barrier you're trying to modify.
          # @option options [array] :barriered_from_usergroup_ids
          #   A list of IDP Groups ids that the primary usergroup is to be barriered from.
          # @option options [Object] :primary_usergroup_id
          #   The id of the primary IDP Group.
          # @option options [array] :restricted_subjects
          #   What kind of interactions are blocked by this barrier? For v1, we only support a list of all 3, eg im, mpim, call.
          # @see https://api.slack.com/methods/admin.barriers.update
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.barriers/admin.barriers.update.json
          def admin_barriers_update(options = {})
            raise ArgumentError, 'Required arguments :barrier_id missing' if options[:barrier_id].nil?
            raise ArgumentError, 'Required arguments :barriered_from_usergroup_ids missing' if options[:barriered_from_usergroup_ids].nil?
            raise ArgumentError, 'Required arguments :primary_usergroup_id missing' if options[:primary_usergroup_id].nil?
            raise ArgumentError, 'Required arguments :restricted_subjects missing' if options[:restricted_subjects].nil?
            post('admin.barriers.update', options)
          end
        end
      end
    end
  end
end
