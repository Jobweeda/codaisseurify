function submitSong(event) {
  event.preventDefault();
  var songName = $('#song_name').val();

  createSong(songName);
  $('#song_name').val(null);

}
function createSong(songName) {
  var checkboxId = "song-" + nextSongId();

  var listItem = $("<li></li>");
  listItem.addClass("one-song");



  $("#all-songs").append( listItem );

}

function nextSongId() {
  return $(".song").length + 1;
}


$(document).ready(function() {
$("form").bind('submit', submitSong);
});
