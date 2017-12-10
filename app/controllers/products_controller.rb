class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
        format.html {}
        format.js { render "products/show" }
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
    else
      flash[:alert] = "The product failed to be added"
      render :new
    end
  end

  def update

  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:alert] = "Product removed!"
      respond_to do |format|
        format.html {redirect_to product_path}
        format.js { render "destroy" }
      end
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
