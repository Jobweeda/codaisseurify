function submitSong(event) {
  event.preventDefault();
  var songName = $('#new-song').val();

  createSong(songName);
  $('#new-song').val(null);

}
function createSong(songName) {
  var checkboxId = "song-" + nextSongId();

  var listItem = $("<li></li>");
  listItem.addClass("song");



  var space = document.createTextNode(" ");




  listItem.append(space);


  $("#song").append( listItem );


}

function nextSongId() {
  return $(".song").length + 1;
}


$(document).ready(function() {
$("form").bind('submit', submitSong);
});
