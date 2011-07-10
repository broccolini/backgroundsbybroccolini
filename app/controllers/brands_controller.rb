class BrandsController < ApplicationController
  before_filter :require_login, :except => [:index, :show]

  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.where(:slug => params[:slug]).first
  end

  def new
    @brand = Brand.new
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def create
    @brand = Brand.new(params[:brand])

    if @brand.slug.blank?
      @brand.slug = sluggify(@brand.name)
    end

    if @brand.save
      redirect_to(brand_path(@brand.slug), :notice => 'Brand was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @brand = Brand.find(params[:id])
    @brand.slug = sluggify(@brand.slug)

    if @brand.update_attributes(params[:brand])
      redirect_to(brand_path(@brand.slug), :notice => 'Brand was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to brands_path
  end
end
