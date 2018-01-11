module SongsHelper
  def artist_select(song, form_type)
    if song.artist.nil? || form_type == :direct_edit
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist_id
      display_artist(song)
    end
  end
end
