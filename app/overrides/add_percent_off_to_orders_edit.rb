Deface::Override.new(virtual_path: "spree/orders/_line_item",
                     name: "add_percent_off_to_orders_edit",
                     insert_bottom: "[data-hook='cart_item_price']",
                     partial: "spree/shared/percent_off_variant",
                     disabled: false)
