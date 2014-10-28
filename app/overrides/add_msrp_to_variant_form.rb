Deface::Override.new({
  :virtual_path => "spree/admin/variants/_form",
  :name => "add_msrp_to_variant_form",
  :insert_after => "[data-hook='sku']",
  :partial => "spree/admin/variants/variant_msrp_field"
})
