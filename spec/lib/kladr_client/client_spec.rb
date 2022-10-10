# frozen_string_literal: true

describe KladrClient do
  describe 'request' do
    let(:options) { { content_type: 'city', limit: 5, query: 'ж' } }

    it 'lol' do
      described_class::Client.new.request(options)
    end
  end
end
