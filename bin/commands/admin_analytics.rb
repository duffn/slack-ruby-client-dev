# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'AdminAnalytics methods.'
command 'admin_analytics' do |g|
  g.desc 'Retrieve analytics data for a given date, presented as a compressed JSON file'
  g.long_desc %( Retrieve analytics data for a given date, presented as a compressed JSON file )
  g.command 'getFile' do |c|
    c.flag 'type', desc: 'The type of analytics to retrieve. The options are currently limited to member.'
    c.flag 'date', desc: 'Date to retrieve the analytics data for, expressed as YYYY-MM-DD in UTC.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_analytics_getFile(options))
    end
  end
end