require 'flickraw'
module Api
 module V1
  class BikeImagesController < ApplicationController
   before_action :set_bike_image, only: [:show, :update, :destroy]


   # GET /bike_images
   def index

    @api_key = Rails.application.credentials.flickr[:api_key]
    @skey = Rails.application.credentials.flickr[:secret_key]

    logger.warn "flickr api key is #{@api_key}"
    logger.warn "flickr secret_key key is #{@skey}"
    FlickRaw.api_key = @api_key
    FlickRaw.shared_secret = @skey
    flickr = FlickRaw::Flickr.new
    logger.warn "flickr API connect"
    now = Date.current()
    yearAgo = (now - 3650)
    logger.warn("now #{now} yearAgo #{yearAgo}" )

    args = {}
    args[:tag] = '#bikeRace'
    args[:min_taken_date] = yearAgo
    args[:max_taken_date] = Date.current()
    @photos = flickr.photos.search args
    @photos.each{|p|
     url = FlickRaw.url p;
     #tags = p.tags;
     puts url;
     #puts tags;
     }
     list = flickr.interestingness.getList :per_page => 20
     list.each {|photo| puts "'#{photo.title}' id=#{photo.id} secret=#{photo.secret}" }
    logger.warn "recent #{@photos.length()}"


    # @bike_images = BikeImage.all

    render json: @bike_images
   end

   # GET /bike_images/1
   def show
    render json: @bike_image
   end

   # POST /bike_images
   def create
    @bike_image = BikeImage.new(bike_image_params)

    if @bike_image.save
      render json: @bike_image, status: :created, location: @bike_image
    else
      render json: @bike_image.errors, status: :unprocessable_entity
    end
   end

   # PATCH/PUT /bike_images/1
   def update
    if @bike_image.update(bike_image_params)
      render json: @bike_image
    else
      render json: @bike_image.errors, status: :unprocessable_entity
    end
   end

   # DELETE /bike_images/1
   def destroy
    @bike_image.destroy
   end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_bike_image
      @bike_image = BikeImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bike_image_params
      params.require(:bike_image).permit(:ref, :owner_name, :title, :description, :uploaded, :taken, :photo_url)
    end
  end
 end
end
