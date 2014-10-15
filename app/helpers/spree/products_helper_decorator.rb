def discount_percentage(product)
  if product.master.msrp.present? && (product.master.msrp.to_f > 0)
    "#{((1 - product.price.to_f / product.master.msrp.to_f) * 100).round}%"
  else
    return '0%'
  end
end
