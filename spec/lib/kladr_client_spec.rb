# frozen_string_literal: true

describe KladrClient do
  it 'is possible to provide config options' do
    described_class.config do |c|
      expect(c).to eq described_class
    end
  end

  describe 'parameters' do
    let(:api_key) { 'amogus' }
    let(:free_base_url) { 'https://bebra.ru' }
    let(:paid_base_url) { 'https://bebra.com' }
    let(:fake_class) { class_double(described_class) }

    it 'is possible to set api_key' do
      allow(fake_class).to receive(:api_key=).with api_key
      expect(fake_class.api_key = api_key).to eq api_key
    end

    it 'is possible to set base_url' do
      allow(fake_class).to receive(:base_url=).with free_base_url
      expect(fake_class.base_url = free_base_url).to eq free_base_url
    end

    it 'is possible to set raw_response' do
      allow(fake_class).to receive(:raw_response=).with true
      expect(fake_class.raw_response = true).to be true
    end

    it 'is possible to set paid_version' do
      allow(fake_class).to receive(:paid_version=).with true
      allow(fake_class).to receive(:base_url).and_return paid_base_url
      expect(fake_class.paid_version = true).to be true
      expect(fake_class.base_url).to eq paid_base_url
    end
  end
end
