# frozen_string_literal: true

require 'kladr_client/generators/install_generator'

describe KladrClient::Generators::InstallGenerator do
  before do
    remove_config
  end

  after do
    remove_config
    add_config
  end

  it 'installs config file properly' do
    described_class.start
    expect(File.file?(config_file)).to be true
  end
end
