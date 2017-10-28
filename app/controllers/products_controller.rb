class ProductsController < ApplicationController

  # Preloading the find_product method (at the bottom) for ONLY the following methods:
  before_action :find_product, only: [:edit, :show, :update, :destroy]
  before_action :new_product, only: [:create, :new]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash[:notice] = "Product has been successfully created."
      redirect_to product_path(@product)
    else
      render :new
    end

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update

    @product = Product.find(params[:id])

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash[:notice] = "Product has been successfully updated."
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy

    if @product.destroy
      flash[:notice] = "Product has been successfully deleted."
      redirect_to products_path
      flash[:notice] = "You have deleted the product #{product.name}."
    else
      render :show
    end

  end

  def find_product
    @product = Product.find(params[:id])
  end

  def new_product
    @product = Product.new
  end

end
