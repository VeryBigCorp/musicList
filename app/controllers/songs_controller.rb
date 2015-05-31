class SongsController < ApplicationController
  def new
    respond_to do |format|
      format.js
    end
  end

  def create
    current_user.bands.build(name: params[:song][:band_name]).save
    band = current_user.bands.find_by("lower(bands.name)=?", params[:song][:band_name].downcase)
    song = band.songs.build(name: params[:song][:song_name], user_id: band.user_id)
    song.save
    song.associate_genre(params[:song][:genre_id].to_i)
    respond_to do |format|
      format.js
    end
  end
end
