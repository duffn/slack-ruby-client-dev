# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::AppsDatastore do
  let(:client) { Slack::Web::Client.new }
  context 'apps.datastore_delete' do
    it 'requires datastore' do
      expect { client.apps_datastore_delete(id: %q[]) }.to raise_error ArgumentError, /Required arguments :datastore missing/
    end
    it 'requires id' do
      expect { client.apps_datastore_delete(datastore: %q[]) }.to raise_error ArgumentError, /Required arguments :id missing/
    end
  end
  context 'apps.datastore_get' do
    it 'requires datastore' do
      expect { client.apps_datastore_get(id: %q[]) }.to raise_error ArgumentError, /Required arguments :datastore missing/
    end
    it 'requires id' do
      expect { client.apps_datastore_get(datastore: %q[]) }.to raise_error ArgumentError, /Required arguments :id missing/
    end
  end
  context 'apps.datastore_put' do
    it 'requires datastore' do
      expect { client.apps_datastore_put(item: %q[]) }.to raise_error ArgumentError, /Required arguments :datastore missing/
    end
    it 'requires item' do
      expect { client.apps_datastore_put(datastore: %q[]) }.to raise_error ArgumentError, /Required arguments :item missing/
    end
  end
  context 'apps.datastore_query' do
    it 'requires datastore' do
      expect { client.apps_datastore_query }.to raise_error ArgumentError, /Required arguments :datastore missing/
    end
  end
  context 'apps.datastore_update' do
    it 'requires datastore' do
      expect { client.apps_datastore_update(item: %q[]) }.to raise_error ArgumentError, /Required arguments :datastore missing/
    end
    it 'requires item' do
      expect { client.apps_datastore_update(datastore: %q[]) }.to raise_error ArgumentError, /Required arguments :item missing/
    end
  end
end
