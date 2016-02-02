Deface::Override.new(virtual_path: "spree/wishlists/show",
                     name: "add_original_price_to_wishlists_show",
                     replace_contents: "p.listing-price",
                     partial: "spree/shared/original_price_display_variant",
                     disabled: false)
