require 'spec_helper'
require 'yaml'

CommunicatorConfiguration ||= Ingenico::Direct::SDK::CommunicatorConfiguration

describe 'CommunicatorConfiguration' do

  it 'can be constructed without a proxy' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)

    expect(communicator_config.api_endpoint).to eq('https://payment.preprod.direct.ingenico.com')
    expect(communicator_config.authorization_type).to eq('v1HMAC')
    expect(communicator_config.connect_timeout).to eq(20)
    expect(communicator_config.socket_timeout).to eq(10)

    expect(communicator_config.api_key_id).to be_nil
    expect(communicator_config.secret_api_key).to be_nil
    expect(communicator_config.proxy_configuration).to be_nil
    expect(communicator_config.integrator).to be_nil
    expect(communicator_config.shopping_cart_extension).to be_nil
  end

  it 'can be constructed with a proxy, without authentication' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10
            direct.api.proxy.uri: http://proxy.example.org:3128'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)
    proxy_config = communicator_config.proxy_configuration

    expect(communicator_config.api_endpoint).to eq('https://payment.preprod.direct.ingenico.com')
    expect(communicator_config.authorization_type).to eq('v1HMAC')
    expect(communicator_config.connect_timeout).to eq(20)
    expect(communicator_config.socket_timeout).to eq(10)

    expect(communicator_config.api_key_id).to be_nil
    expect(communicator_config.secret_api_key).to be_nil
    expect(proxy_config).to be_truthy
    expect(proxy_config.scheme).to eq('http')
    expect(proxy_config.host).to eq('proxy.example.org')
    expect(proxy_config.port).to eq(3128)
    expect(proxy_config.username).to be_nil
    expect(proxy_config.password).to be_nil
  end

  it 'can be constructed to authenticate to a proxy' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10
            direct.api.proxy.uri: http://proxy.example.org:3128
            direct.api.proxy.username: global-collect-username
            direct.api.proxy.password: global-collect-password'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)
    proxy_config = communicator_config.proxy_configuration

    expect(communicator_config.api_endpoint).to eq('https://payment.preprod.direct.ingenico.com')
    expect(communicator_config.authorization_type).to eq('v1HMAC')
    expect(communicator_config.connect_timeout).to eq(20)
    expect(communicator_config.socket_timeout).to eq(10)

    expect(communicator_config.api_key_id).to be_nil
    expect(communicator_config.secret_api_key).to be_nil
    expect(proxy_config).to be_truthy
    expect(proxy_config.scheme).to eq('http')
    expect(proxy_config.host).to eq('proxy.example.org')
    expect(proxy_config.port).to eq(3128)
    expect(proxy_config.username).to eq('global-collect-username')
    expect(proxy_config.password).to eq('global-collect-password')
  end

  it 'accepts a different number of maximum connections' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10
            direct.api.maxConnections: 100'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)

    expect(communicator_config.api_endpoint).to eq('https://payment.preprod.direct.ingenico.com')
    expect(communicator_config.authorization_type).to eq('v1HMAC')
    expect(communicator_config.connect_timeout).to eq(20)
    expect(communicator_config.socket_timeout).to eq(10)
    expect(communicator_config.max_connections).to eq(100)

    expect(communicator_config.api_key_id).to be_nil
    expect(communicator_config.secret_api_key).to be_nil
    expect(communicator_config.proxy_configuration).to be_nil
  end

  it 'uses specific scheme to override default' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10
            direct.api.endpoint.scheme: http'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)

    expect(communicator_config.api_endpoint).to eq('http://payment.preprod.direct.ingenico.com')
  end

  it 'uses specific port to override default' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10
            direct.api.endpoint.port: 8080'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)

    expect(communicator_config.api_endpoint).to eq('https://payment.preprod.direct.ingenico.com:8080')
  end

  it 'uses specific scheme and port to override default' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10
            direct.api.endpoint.scheme: http
            direct.api.endpoint.port: 8080'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)

    expect(communicator_config.api_endpoint).to eq('http://payment.preprod.direct.ingenico.com:8080')
  end

  it 'stores shoppingCartExtension data' do
    yaml = '---
            direct.api.endpoint.host: payment.preprod.direct.ingenico.com
            direct.api.authorizationType: v1HMAC
            direct.api.connectTimeout: 20
            direct.api.socketTimeout: 10
            direct.api.integrator: Ingenico.Integrator
            direct.api.shoppingCartExtension.creator: Ingenico.Creator
            direct.api.shoppingCartExtension.name: Ingenico.ShoppingCarts
            direct.api.shoppingCartExtension.version: 1.0
            direct.api.shoppingCartExtension.extensionId: ExtensionId'
    config = YAML.load(yaml)

    communicator_config = CommunicatorConfiguration.new(properties: config)

    expect(communicator_config.api_endpoint).to eq('https://payment.preprod.direct.ingenico.com')
    expect(communicator_config.authorization_type).to eq('v1HMAC')
    expect(communicator_config.connect_timeout).to eq(20)
    expect(communicator_config.socket_timeout).to eq(10)

    expect(communicator_config.api_key_id).to be_nil
    expect(communicator_config.secret_api_key).to be_nil
    expect(communicator_config.proxy_configuration).to be_nil
    expect(communicator_config.integrator).to eq('Ingenico.Integrator')
    expect(communicator_config.shopping_cart_extension).to be_truthy
    expect(communicator_config.shopping_cart_extension.creator).to eq('Ingenico.Creator')
    expect(communicator_config.shopping_cart_extension.name).to eq('Ingenico.ShoppingCarts')
    expect(communicator_config.shopping_cart_extension.version).to eq('1.0')
    expect(communicator_config.shopping_cart_extension.extension_id).to eq('ExtensionId')
  end
end
