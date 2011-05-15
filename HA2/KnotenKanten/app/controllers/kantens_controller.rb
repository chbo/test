class KantensController < ApplicationController
  # GET /kantens
  # GET /kantens.xml
  def index
    @kantens = Kanten.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kantens }
    end
  end

  # GET /kantens/1
  # GET /kantens/1.xml
  def show
    @kanten = Kanten.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kanten }
    end
  end

  # GET /kantens/new
  # GET /kantens/new.xml
  def new
    @kanten = Kanten.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kanten }
    end
  end

  # GET /kantens/1/edit
  def edit
    @kanten = Kanten.find(params[:id])
  end

  # POST /kantens
  # POST /kantens.xml
  def create
    @kanten = Kanten.new(params[:kanten])

    respond_to do |format|
      if @kanten.save
        format.html { redirect_to(@kanten, :notice => 'Kanten was successfully created.') }
        format.xml  { render :xml => @kanten, :status => :created, :location => @kanten }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kanten.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kantens/1
  # PUT /kantens/1.xml
  def update
    @kanten = Kanten.find(params[:id])

    respond_to do |format|
      if @kanten.update_attributes(params[:kanten])
        format.html { redirect_to(@kanten, :notice => 'Kanten was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kanten.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kantens/1
  # DELETE /kantens/1.xml
  def destroy
    @kanten = Kanten.find(params[:id])
    @kanten.destroy

    respond_to do |format|
      format.html { redirect_to(kantens_url) }
      format.xml  { head :ok }
    end
  end
end
