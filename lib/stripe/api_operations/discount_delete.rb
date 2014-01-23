module Stripe
  module APIOperations
    module DiscountDelete
      def delete_discount
        Stripe.request(:delete, discount_url, @api_key)
        refresh_from({ :discount => nil }, api_key, true)
      end

      private

      def discount_url
        url + '/discount'
      end
    end
  end
end
