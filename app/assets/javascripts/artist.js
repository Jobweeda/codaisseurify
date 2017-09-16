function submitSong(event) {
  event.preventDefault();
  var songName = $('#song_name').val();

  createSong(songName);
  $('#song_name').val(null);

}

// THIS WORKS STOP TOUCHING IT
function createSong(songName) {
  var newSong = { name: completed: false };

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

  $("#all-songs").append(listItem);
}
//  DONT TOUCH THIS ABOVE STUFF
function nextSongId() {
  return $(".song").length + 1;
}

function deleteSong(songId) {

$.ajax({
  type: "DELETE",
  url: "/songs.json",
  contentType: "application/json",
  dataType: "json"
})
 .done(function(data) {
   $("#" + songId).remove();
 });
}



$(document).ready(function() {
$("form").bind('submit', submitSong);
$("#remove-button").on('click', deleteSongs);
});
