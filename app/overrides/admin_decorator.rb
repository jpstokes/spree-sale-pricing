Deface::Override.new({
  virtual_path: "spree/admin/shared/_product_tabs",
  name: "add_sale_prices_tab",
  insert_bottom: "[data-hook='admin_product_tabs']",
  text: "<%= content_tag :li, :class => ('active' if current == 'Product Sale Prices') do %><%= link_to_with_icon 'icon-edit', Spree.t(:product_sale_prices), admin_product_sale_prices_path(@product) %><% end %>",
  disabled: false
})

Deface::Override.new({
  virtual_path: "spree/admin/products/_form",
  name: "add_on_sale_to_product_form",
  insert_bottom: "[data-hook='admin_product_form_price']",
  text: '<% if @product.on_sale? %><strong><%= "(On sale for #{@product.display_price})" %></strong><% end %>',
  disabled: false
})

Deface::Override.new({
  virtual_path: "spree/admin/variants/_form",
  name: "add_on_sale_to_variant_form",
  insert_bottom: "[data-hook='price']",
  text: '<% if @variant.on_sale? %><strong><%= "(On sale for #{@variant.display_price})" %></strong><% end %>',
  disabled: false
})
