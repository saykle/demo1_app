class MircropostsController < ApplicationController
  # GET /mircroposts
  # GET /mircroposts.json
  def index
    @mircroposts = Mircropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mircroposts }
    end
  end

  # GET /mircroposts/1
  # GET /mircroposts/1.json
  def show
    @mircropost = Mircropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mircropost }
    end
  end

  # GET /mircroposts/new
  # GET /mircroposts/new.json
  def new
    @mircropost = Mircropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mircropost }
    end
  end

  # GET /mircroposts/1/edit
  def edit
    @mircropost = Mircropost.find(params[:id])
  end

  # POST /mircroposts
  # POST /mircroposts.json
  def create
    @mircropost = Mircropost.new(params[:mircropost])

    respond_to do |format|
      if @mircropost.save
        format.html { redirect_to @mircropost, :notice => 'Mircropost was successfully created.' }
        format.json { render :json => @mircropost, :status => :created, :location => @mircropost }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mircropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mircroposts/1
  # PUT /mircroposts/1.json
  def update
    @mircropost = Mircropost.find(params[:id])

    respond_to do |format|
      if @mircropost.update_attributes(params[:mircropost])
        format.html { redirect_to @mircropost, :notice => 'Mircropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mircropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mircroposts/1
  # DELETE /mircroposts/1.json
  def destroy
    @mircropost = Mircropost.find(params[:id])
    @mircropost.destroy

    respond_to do |format|
      format.html { redirect_to mircroposts_url }
      format.json { head :no_content }
    end
  end
end
