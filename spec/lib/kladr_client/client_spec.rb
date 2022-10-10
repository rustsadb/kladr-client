# frozen_string_literal: true

require 'kladr_client/client'
require 'kladr_client/errors'

describe KladrClient::Client do
  subject(:response) { described_class.new.request(options) }

  describe 'request' do
    let(:options) { { content_type: 'city', limit: 5, query: 'Мо' } }

    context 'with raw_response = false' do
      before { KladrClient.raw_response = false }

      it 'returns symbolized data by options' do
        VCR.use_cassette('successful') do
          expect(response.size).to eq options[:limit]
          expect(response.pluck(:contentType)).to be_all(options[:content_type])
          expect(response.first.keys.all?(Symbol)).to be true
        end
      end
    end

    context 'with raw_response = true' do
      before { KladrClient.raw_response = true }

      it 'returns raw data by options' do
        VCR.use_cassette('successful') do
          expect(response.size).to eq options[:limit]
          expect(response.pluck('contentType')).to be_all(options[:content_type])
          expect(response.first.keys.all?(String)).to be true
        end
      end
    end

    context 'with invalid param' do
      before { options[:content_type] = 'bebra' }

      it 'returns parameter error' do
        VCR.use_cassette('error') do
          expect { response }.to raise_error KladrClient::KladrException
        end
      end
    end
  end
end
