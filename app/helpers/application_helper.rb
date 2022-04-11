module ApplicationHelper
	def my_cart_count_over_one
    if @my_cart.line_items.count > 0
      return "<span class='tag is-dark'>#{@my_cart.line_items.count}</span>".html_safe
    end
  end

  def my_cart_has_items
    return @my_cart.line_items.count > 0
  end
end
