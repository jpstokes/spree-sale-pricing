Deface::Override.new(virtual_path: "spree/orders/item_added",
                     name: "add_original_price_to_orders_item_added",
                     replace_contents: "p.listing-price",
                     partial: "spree/shared/original_price_display_item_added",
                     disabled: false)
