class ProductsController < ApplicationController
  def index
      @product = Product.all
    end
  def show
      @product = Product.find(params[:id])
  end
  
  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end


  def create
    @product = Product.new(product_params)
     respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }

      else
        render 'new', layout: false
      end
    end
  end

  def update
    @product = Product.find(params[:id])
   
    if @product.update(product_params)
      redirect_to @product
      # render action: "index"

      # redirect_to @product,status: 500
      # redirect_back(fallback_location: @product_path)
      # render json: @product
      # render js: "alert('Hello Rails');"
      # render file: "#{Rails.root}/public/404.html", layout: false
    else
      render 'edit'
     end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
   
    redirect_to products_path
  end



  private
    def product_params
      params.require(:product).permit(:name, :price, :description, :expiry_date,)
    end
end
