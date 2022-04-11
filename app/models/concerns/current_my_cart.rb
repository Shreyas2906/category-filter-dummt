module CurrentMyCart

  private

    def set_cart
      @my_cart = MyCart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @my_cart = MyCart.create
      session[:my_cart_id] = @mycart.id
    end

end