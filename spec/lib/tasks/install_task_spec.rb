# frozen_string_literal: true

RSpec.describe KladrClient do
  it 'import rake task is callable' do
    expect(import_executor).to output(/complete!/).to_stdout
  end
end
