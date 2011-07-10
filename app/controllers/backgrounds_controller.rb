class BackgroundsController < ApplicationController
  # GET /backgrounds
  # GET /backgrounds.xml
  def index
    @backgrounds = Background.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @backgrounds }
    end
  end

  # GET /backgrounds/1
  # GET /backgrounds/1.xml
  def show
    @background = Background.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @background }
    end
  end

  # GET /backgrounds/new
  # GET /backgrounds/new.xml
  def new
    @background = Background.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @background }
    end
  end

  # GET /backgrounds/1/edit
  def edit
    @background = Background.find(params[:id])
  end

  # POST /backgrounds
  # POST /backgrounds.xml
  def create
    @background = Background.new(params[:background])

    respond_to do |format|
      if @background.save
        format.html { redirect_to(@background, :notice => 'Background was successfully created.') }
        format.xml  { render :xml => @background, :status => :created, :location => @background }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /backgrounds/1
  # PUT /backgrounds/1.xml
  def update
    @background = Background.find(params[:id])

    respond_to do |format|
      if @background.update_attributes(params[:background])
        format.html { redirect_to(@background, :notice => 'Background was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /backgrounds/1
  # DELETE /backgrounds/1.xml
  def destroy
    @background = Background.find(params[:id])
    @background.destroy

    respond_to do |format|
      format.html { redirect_to(backgrounds_url) }
      format.xml  { head :ok }
    end
  end
end
