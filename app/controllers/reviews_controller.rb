class ReviewsController < ApplicationController

  def create
      @review = Review.new
      @review.review = params[:review][:comment]
      @review.product_id = params[:product_id]

      if @review.save
        flash[:notice] = "Review has been successfully created."
        redirect_to @product
      end
    end

    def edit
      @review = Review.find_by(params[:id])
      @product = Product.find_by(params[:product_id])
    end

    def update
      @review.review = params[:review][:comment]
      @review.product = @product

      if @review.save
        flash[:notice] = "Review has been successfully updated."
        redirect_to @product
      else
        render :edit
      end
    end

    def destroy
      if @review.destroy
        flash[:notice] = "Review has been successfully deleted."
        redirect_to product_path(params[:product_id])
      else
        render :show
      end
    end
end
