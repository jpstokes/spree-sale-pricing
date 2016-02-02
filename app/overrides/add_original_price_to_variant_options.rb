Deface::Override.new(virtual_path: "spree/products/_variant_options",
                     name: "add_original_price_to_variant_options",
                     replace_contents: ".option-value-price",
                     partial: "spree/shared/original_price_display_variant_options",
                     disabled: false)