# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::Workflows do
  let(:client) { Slack::Web::Client.new }
  context 'workflows_stepCompleted' do
    it 'requires workflow_step_execute_id' do
      expect { client.workflows_stepCompleted }.to raise_error ArgumentError, /Required arguments :workflow_step_execute_id missing/
    end
  end
  context 'workflows_stepFailed' do
    it 'requires error' do
      expect { client.workflows_stepFailed(workflow_step_execute_id: %q[]) }.to raise_error ArgumentError, /Required arguments :error missing/
    end
    it 'requires workflow_step_execute_id' do
      expect { client.workflows_stepFailed(error: %q[]) }.to raise_error ArgumentError, /Required arguments :workflow_step_execute_id missing/
    end
    it 'encodes error as json' do
      expect(client).to receive(:post).with('workflows.stepFailed', {error: %q[{"data":["data"]}], workflow_step_execute_id: %q[]})
      client.workflows_stepFailed(error: {:data=>["data"]}, workflow_step_execute_id: %q[])
    end
  end
  context 'workflows_updateStep' do
    it 'requires workflow_step_edit_id' do
      expect { client.workflows_updateStep }.to raise_error ArgumentError, /Required arguments :workflow_step_edit_id missing/
    end
    it 'encodes inputs, outputs as json' do
      expect(client).to receive(:post).with('workflows.updateStep', {workflow_step_edit_id: %q[], inputs: %q[{"data":["data"]}], outputs: %q[{"data":["data"]}]})
      client.workflows_updateStep(workflow_step_edit_id: %q[], inputs: {:data=>["data"]}, outputs: {:data=>["data"]})
    end
  end
end
