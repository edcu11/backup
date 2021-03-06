class CategoriesController < ApplicationController
  skip_before_action :authenticate, except: [:new, :create, :edit, :destroy]
  def index
    @categories = Category.order(:id)
  end

  def new
    @category = Category.new
  end

  def create
  	@category = Category.new(category_params)

    if @category.save
      redirect_to categories_path,  notice: "Se agrego con exito maestro pokemon"
    else
      render :new
    end
  end

  def list
    @category = Category.find_by(nombre: params[:nombre])
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to categories_path,  notice: "Se edito con exito maestro pokemon"
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy
    redirect_to categories_path,   notice: "Se borro con exito companero"
  end


  protected
  def category_params
    params.require(:category).permit!
  end
end
