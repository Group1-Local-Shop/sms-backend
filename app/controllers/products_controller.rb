class ProductsController < ApplicationController

def 
    product = Product.all
    render json: product

end 

def show 
    product = Product.find(params[:id])
    render json: product

end 

def create 
    new_product = Product.create(product_params)
    render json: new_product

end 

def update 
    product = Product.find(params[:id])
    product.update(product_params)
    render json: product
end 

private 

def product_params
    params.permit(:name, :image)
end


end
