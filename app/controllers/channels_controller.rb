class ChannelsController < ApplicationController

  # GET /channels
  # GET /channels.xml
  def index
    @channels = Channel.find(:all, :order => "channel_no")
  end

  # GET /channels/new
  # GET /channels/new.xml
  def new
    @channel = Channel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @channel }
    end
  end

  # GET /channels/1/edit
  def edit
    @channel = Channel.find(params[:id])
  end

  # POST /channels
  # POST /channels.xml
  def create
    @channel = Channel.new(params[:channel])

    respond_to do |format|
      if @channel.save
        format.html { redirect_to(channels_url, :notice => 'Channel was successfully created.') }
        format.xml  { render :xml => @channel, :status => :created, :location => @channel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @channels.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /channels/1
  # PUT /channels/1.xml
  def update
    @channel = Channel.find(params[:id])

    respond_to do |format|
      if @channel.update_attributes(params[:channel])
        format.html { redirect_to(channels_url, :notice => 'Channel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @channel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /channels/1
  # DELETE /channels/1.xml
  def destroy
    @channel = Channel.find(params[:id])
    @channel.destroy

    respond_to do |format|
      format.html { redirect_to(channels_url) }
      format.xml  { head :ok }
    end
  end

end
