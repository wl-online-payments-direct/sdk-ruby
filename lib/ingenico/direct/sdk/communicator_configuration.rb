module Ingenico::Direct::SDK

  # A CommunicatorConfiguration stores all data used to initialize an {Ingenico::Direct::SDK::Communicator}.
  #
  # @attr [String] api_endpoint       Base URL to the Ingenico ePayments platform
  # @attr [String] api_key_id         Identifier of the _secret_api_key_ used in authentication.
  # @attr [String] secret_api_key     Secret key used in authentication
  # @attr [String] authorization_type String representing the authentication algorithm used
  class CommunicatorConfiguration < EndpointConfiguration

    # Creates a new CommunicatorConfiguration instance.
    #
    # If a _properties_ object is given, it will be parsed like a hash in order to read these attributes.
    # If a value is given in both the _properties_ hash and as a separate parameter,
    # the separate parameter will take precedence over the value in the properties.
    #
    # @param properties              [Hash] hash that may contain any of the other parameters.
    # @param api_endpoint            [String] the base URL to the Ingenico ePayments platform.
    # @param api_key_id              [String] the identifier of the _secret_api_key_ used to authenticate requests.
    # @param secret_api_key          [String] the key used to authenticate requests sent to the Ingenico ePayments platform.
    # @param authorization_type      [String] string describing the authorization protocol to follow.
    # @param connect_timeout         [Integer] the number of seconds before a connection attempt with the Ingenico ePayments platform times out.
    # @param socket_timeout          [Integer] the number of seconds before a timeout occurs when transmitting data to or from the Ingenico ePayments platform.
    # @param max_connections         [Integer] the number of connections with the Ingenico ePayments platform that are kept alive in the connection pool.
    #                                These connections will be reused when possible.
    # @param proxy_configuration     [Ingenico::Direct::SDK::ProxyConfiguration] stores the URL to a proxy to be used in all communication,
    #                                or nil if no proxy should be used.
    # @param integrator              [String] name of the integrator
    # @param shopping_cart_extension [Ingenico::Direct::SDK::Domain::ShoppingCartExtension] stores shopping cart-related metadata.
    # @see EndpointConfiguration#initialize
    def initialize(properties: nil, api_endpoint: nil, api_key_id: nil,
                   secret_api_key: nil, authorization_type: nil,
                   connect_timeout: nil, socket_timeout: nil,
                   max_connections: nil, proxy_configuration: nil,
                   integrator: nil, shopping_cart_extension: nil)
      if properties
        super(properties, 'direct.api')
        @authorization_type = properties['direct.api.authorizationType'] ?
                                  DefaultImpl::AuthorizationType.get_authorization(properties['direct.api.authorizationType']) :
                                  DefaultImpl::AuthorizationType::V1HMAC
      end
      @api_endpoint = api_endpoint if api_endpoint
      @api_key_id = api_key_id if api_key_id
      @secret_api_key = secret_api_key if secret_api_key
      @authorization_type = DefaultImpl::AuthorizationType.get_authorization(authorization_type) if authorization_type
      @connect_timeout = connect_timeout if connect_timeout
      @socket_timeout = socket_timeout if socket_timeout
      @max_connections = max_connections if max_connections
      @proxy_configuration = proxy_configuration if proxy_configuration
      @integrator = integrator if integrator
      @shopping_cart_extension = shopping_cart_extension if shopping_cart_extension
    end

    attr_accessor :api_endpoint
    attr_accessor :api_key_id
    attr_accessor :secret_api_key
    attr_accessor :authorization_type
  end
end
