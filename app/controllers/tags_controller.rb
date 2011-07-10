class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.where(:name => params[:slug].gsub(/-/, " ")).first
  end
end
