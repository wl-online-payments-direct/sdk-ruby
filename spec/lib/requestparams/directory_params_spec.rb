require 'spec_helper'
require 'ingenico/direct/sdk/merchant/products/get_product_directory_params'

describe 'DirectoryParams' do
  subject(:params){Ingenico::Direct::SDK::Merchant::Products::GetProductDirectoryParams.new}

  it 'should output an empty list when no parameters are present' do
    expect(params.to_request_parameters).to eq([])
  end

  it 'accepts parameters' do
    params.country_code = 'NL'
    params.currency_code = 'EUR'
    expected = [Ingenico::Direct::SDK::RequestParam.new('countryCode', 'NL'), Ingenico::Direct::SDK::RequestParam.new('currencyCode', 'EUR')]

    expect(params.to_request_parameters).to include(expected)
  end

  it 'allows for deletion' do
    params.country_code = 'NL'
    params.currency_code = 'EUR'
    params.country_code = nil
    params.currency_code = nil

    expect(params.to_request_parameters).to eq([])
  end
end
