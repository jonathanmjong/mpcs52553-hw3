class ProductsController < ApplicationController

  # /products
  def index
    @products = Product.all
  end
  # /products/:id
  def show
    @product = Product.find_by(id: params["id"])
  end
  # /products/:id/new
  def new
  end
  # /products/new to show form, then /products as POST
  def create
    p = Product.new
    p.title = params["title"]
    p.price = params["price"].to_f * 100
    p.description = params["description"]
    p.save

    redirect_to "/products"
  end
  # /products/:id/edit
  def edit
    @product = Product.find_by(id: params["id"])
  end

end
