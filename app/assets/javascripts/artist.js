function submitSong(event) {
  event.preventDefault();
  var songName = $('#new-song').val();

  createSong(songName);
  $('#new-song').val(null);
  
}
