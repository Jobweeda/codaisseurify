function nextSongId() {
  return $(".song").length + 1;
}

function submitSong(event) {
  event.preventDefault();
  var songName = $("#song_name").val();

  createSong(songName);
  $("#song_name").val(null);

}


// THIS WORKS STOP TOUCHING IT
function createSong(songName) {
  var newSong = { name: songName };

     $.ajax({
        type: "POST",
        url: "/songs.json",
        data: JSON.stringify({
            song: newSong
        }),
        contentType: "application/json",
        dataType: "json"
      });

  var listItem = $("<li></li>");
  listItem.addClass("one-song");

  $("#all-songs").append(listItem);
 }
//  DONT TOUCH THIS ABOVE STUFF



 function deleteSong(songId) {

  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artistId + "/songs" + songId + ".json",
    contentType: "application/json",
    datatype: "json"
  })
    $.done(function(data) {
      $("#new-song"+ songId +".json").remove();

  });
// DONT TOUCH THIS ABOVE STUFF EITHER
  // function deleteSongs(event) {
  //   event.preventDefault();
  //
  //   $.each($("#songId"), function(index, listItem) {
  //     song = $(listItem).data('.song');
  //     deleteSong(song);
  //   });
  // }
  function cleanUpAllSongs(event) {
  event.preventDefault();
  $.when($(".song").remove())
}

$(document).ready(function() {
$("form").bind('submit', submitSong);
$("#clean-up").bind('click', cleanUpAllSongs);
});
