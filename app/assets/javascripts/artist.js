function submitSong(event) {
  event.preventDefault();
  var songName = $('#song_name').val();

  createSong(songName);
  $('#song_name').val(null);

}
function createSong(songName) {

  var newSong = { name:, completed: false };

    $.ajax({
      type: "POST",
      url: "/songs.json",
      data: JSON.stringify({
          name: name
      }),
      contentType: "application/json",
      dataType: "json"
    });

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
