class ProductsController < ApplicationController

  # GET /products
  def index
    @products = Product.all
  end
  # GET /products/:id
  def show
    @product = Product.find_by(id: params["id"])
  end
  # GET form /products/:id/new
  def new
  end
  # GET create form /products/new, then /products as POST
  def create
    p = Product.new
    p.title = params["title"]
    p.price = params["price"].to_f * 100
    p.description = params["description"]
    p.save

    redirect_to "/products"
  end
  # GET edit form /products/:id/edit
  def edit
    @product = Product.find_by(id: params["id"])
  end
  # PATCH /products/:id
  def update
    p = Product.find_by(id: params["id"])
    p.title = params["title"]
    p.price = params["price"]
    p.description = params["description"]
    p.save

    redirect_to "/products"
  end
  # DELETE /products/:id
  def destroy
    p = Product.find_by(id: params["id"])
    p.delete

    redirect_to "/products"
  end

end
