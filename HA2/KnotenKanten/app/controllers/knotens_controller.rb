class KnotensController < ApplicationController
  # GET /knotens
  # GET /knotens.xml
  def index
    @knotens = Knoten.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @knotens }
    end
  end

  # GET /knotens/1
  # GET /knotens/1.xml
  def show
    @knoten = Knoten.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @knoten }
    end
  end

  # GET /knotens/new
  # GET /knotens/new.xml
  def new
    @knoten = Knoten.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @knoten }
    end
  end

  # GET /knotens/1/edit
  def edit
    @knoten = Knoten.find(params[:id])
  end

  # POST /knotens
  # POST /knotens.xml
  def create
    @knoten = Knoten.new(params[:knoten])

    respond_to do |format|
      if @knoten.save
        format.html { redirect_to(@knoten, :notice => 'Knoten was successfully created.') }
        format.xml  { render :xml => @knoten, :status => :created, :location => @knoten }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @knoten.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /knotens/1
  # PUT /knotens/1.xml
  def update
    @knoten = Knoten.find(params[:id])

    respond_to do |format|
      if @knoten.update_attributes(params[:knoten])
        format.html { redirect_to(@knoten, :notice => 'Knoten was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @knoten.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /knotens/1
  # DELETE /knotens/1.xml
  def destroy
    @knoten = Knoten.find(params[:id])
    @knoten.destroy

    respond_to do |format|
      format.html { redirect_to(knotens_url) }
      format.xml  { head :ok }
    end
  end
end
