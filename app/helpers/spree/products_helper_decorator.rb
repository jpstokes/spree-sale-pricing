def discount_percentage(product)
  if product.master.msrp.present? && (product.master.msrp.to_f > product.price.to_f)
    "#{((1 - product.price.to_f / product.master.msrp.to_f) * 100).round}"
  else
    '0'
  end
end

def discount_percentage_variant(variant)
  variant.display_discount
end
