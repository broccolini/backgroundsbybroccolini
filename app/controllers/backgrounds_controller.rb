class BackgroundsController < ApplicationController
  before_filter :require_login, :except => [:index, :show]

  def index
    @backgrounds = Background.all
  end

  def show
    @background = Background.where(:slug => params[:slug]).first
  end

  def new
    @background = Background.new
  end

  def edit
    @background = Background.find(params[:id])
  end

  def create
    @background = Background.new(params[:background])

    if @background.slug.blank?
      @background.slug = sluggify(@background.name)
    end

    if @background.save
      redirect_to(background_path(@background.slug), :notice => 'Background was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @background = Background.find(params[:id])
    params[:background][:slug] = sluggify(params[:background][:slug])

    if @background.update_attributes(params[:background])
      redirect_to(background_path(@background.slug), :notice => 'Background was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @background = Background.find(params[:id])
    @background.destroy
    redirect_to backgrounds_path
  end
end
