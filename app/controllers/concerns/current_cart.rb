module CurrentCart
  extend ActiveSupport::Concern

  # current cart_id is saved in session[:cart_id]
  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    puts "Creando Carrito..."
    @cart = Cart.create()
    session[:cart_id] = @cart.id
    puts "El ID del carrito de Compras es:  #{@cart.id}"
  end

end
