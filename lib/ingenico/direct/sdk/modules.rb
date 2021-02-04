# Main module of this SDK. All non-data classes that are used at multiple places in the SDK are placed in this module.
module Ingenico::Direct::SDK
end

# Contains provided implementations for abstract functionality in this SDK.
# These implementations can be replaced or adapted if desired to suit specific needs.
module Ingenico::Direct::SDK::DefaultImpl
end

# Container for all data-containing modules.
# The data-classes contained within can be serialized and communicated with the Ingenico ePayments platform.
# These classes generally contain data used in processing requests or responses.
module Ingenico::Direct::SDK::Domain
end

# Contains all logging-related classes.
module Ingenico::Direct::SDK::Logging
end

# Contains interfaces to all Direct services. These services are accessed through a *Ingenico::Direct::SDK::Client* instance.
module Ingenico::Direct::SDK::Merchant
end

# Contains the client used to access the Hosted Checkout service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/HostedCheckout/
module Ingenico::Direct::SDK::Merchant::HostedCheckout
end

# Contains the client used to access the Hosted Tokenization service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/HostedTokenization/
module Ingenico::Direct::SDK::Merchant::HostedTokenization
end

# Contains the client used to access the Payment service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/Payments/
module Ingenico::Direct::SDK::Merchant::Payments
end

# Contains the client used to access the Payout service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/Payouts/
module Ingenico::Direct::SDK::Merchant::Payouts
end

# Contains the client used to access the Product Groups service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/ProductGroups/
module Ingenico::Direct::SDK::Merchant::ProductGroups
end

# Contains the client used to access the Products service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/Products/
module Ingenico::Direct::SDK::Merchant::Products
end

# Contains the client to access miscellaneous services.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/Services/
module Ingenico::Direct::SDK::Merchant::Services
end

# Contains the client used to access the Sessions service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/Sessions/
module Ingenico::Direct::SDK::Merchant::Sessions
end

# Contains the client used to access the Tokens service.
# @see https://support.direct.ingenico.com/documentation/api/reference/index.html#tag/Tokens/
module Ingenico::Direct::SDK::Merchant::Tokens
end

# Contains data classes related to Webhooks functionality.
module Ingenico::Direct::SDK::Webhooks
end
