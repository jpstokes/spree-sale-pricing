def discount_percentage(product)
  if product.master.msrp.present? && (product.master.msrp.to_f > 0)
    "#{((1 - product.price.to_f / product.master.msrp.to_f) * 100).round}%"
  else
    return '0%'
  end
end

def discount_percentage_variant(variant)
  if variant.msrp.present? && (variant.msrp.to_f > 0)
    "#{((1 - variant.price.to_f / variant.msrp.to_f) * 100).round}%"
  else
    return '0%'
  end
end
