module Spree
  module Admin
    class SalePricesController < BaseController
      before_filter :load_product_and_variant
      after_filter :update_product, only: [:create, :destroy]
      respond_to :js, :html

      def index
        @sale_price = Spree::SalePrice.new
        @sale_prices = @variant.sale_prices
      end

      # Create a new sale price
      def create
        @sale_price = @variant.put_on_sale(sale_price_params[:value], sale_price_params[:start_at], sale_price_params[:end_at])
        logger.debug @sale_price.inspect
        respond_with(@sale_price)
      end

      # Destroy a sale price
      def destroy
        @sale_price = Spree::SalePrice.find(params[:id])
        @sale_price.destroy

        respond_with(@sale_price)
      end

      private

      # Load the variant as a before filter. Redirect to the referer if no product is found
      def load_product_and_variant
        @product = Spree::Product.find_by(slug: params[:product_id])
        @variant = @product.variants_including_master.find(params[:variant_id])
        redirect_to request.referer unless @variant
      end

      # Sale price params
      def sale_price_params
        params.require(:sale_price).permit(:id, :value, :start_at, :end_at, :enabled)
      end

      def update_product
        @product.touch
      end

    end
  end
end
