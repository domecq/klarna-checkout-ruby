module Klarna
  module Checkout
    class Merchant < Resource
      attr_accessor :id, :terms_uri, :checkout_uri, :confirmation_uri,
                    :push_uri, :validation_uri

      def as_json
        json_sanitize({
          :id               => @id,
          :terms_uri        => @terms_uri,
          :checkout_uri     => @checkout_uri,    
          :confirmation_uri => @confirmation_uri,        
          :push_uri         => @push_uri,
          :validation_uri   => @validation_uri
        })
      end
    end
  end
end
