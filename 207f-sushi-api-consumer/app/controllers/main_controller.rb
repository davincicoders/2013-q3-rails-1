class MainController < ApplicationController
  def root
    redirect_to "/place_order" and return
  end

  def place_order
    @dishes = Dish.order(:id).all
    render :place_order
  end

  def place_order_post
    order = Order.new
    order.table_number = params["table_number"]
    order.total_price = 0.0
    order.save!
  
    Dish.all.each do |dish|
      quantity = params["quantity_for_dish_#{dish.id}"]
      if quantity != ""
        line = LineItem.new
        line.dish_id = dish.id
        line.order_id = order.id
        line.line_price = dish.price * quantity.to_i
        line.quantity = quantity
        line.save!
  
        order.total_price = order.total_price + line.line_price
      end
    end
    order.save!
  
    redirect_to "/place_order" and return
  end
end
