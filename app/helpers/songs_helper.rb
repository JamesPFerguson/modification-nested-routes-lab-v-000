module SongsHelper


  def artist_select(artist, song)
    if song.artist.nil?
      select_tag "song[artist_id]", collection_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist.id
    end
  end

end
