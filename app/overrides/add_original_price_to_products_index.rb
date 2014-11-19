Deface::Override.new(virtual_path: "spree/shared/_products",
                     name: "add_original_price_to_products_index",
                     replace_contents: "p.listing-price",
                     partial: "spree/shared/original_price_display",
                     disabled: false)

Deface::Override.new(virtual_path: "spree/shared/_listing_variant",
                     name: "add_original_price_to_products_index_variants",
                     replace_contents: ".listing-variant-price",
                     partial: "spree/shared/original_price_display_variant",
                     disabled: false)
