Spree::OrderUpdater.class_eval do

  def update_item_total
    order.item_total = line_items.sum('price * quantity')
    update_order_total
  end

end
