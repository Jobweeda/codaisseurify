function nextSongId() {
  return $(".song").size + 1;
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
  listItem.addClass("song");

  $(".all-songs").append(listItem);
 }
 }
//  DONT TOUCH THIS ABOVE STUFF



 function removeSong(songId) {

  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artistId + "/songs" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
    $.done(function(data) {
      $(".song" + songId + ".json").remove();
  });
}
// DONT TOUCH THIS ABOVE STUFF EITHER
  // function deleteSongs(event) {
  //   event.preventDefault();
  //
  //   $.each($("#songId"), function(index, listItem) {
  //     song = $(listItem).data('.song');
  //     deleteSong(song);
  //   });
  // }
  function removeAllSongs(event) {
    event.preventDefault();

    $.each($(".delete-button"), function(show, listItem) {
      var songId = $(listItem).data("id");
      removeSongs(songId);
    });
  }

  function removeSongs(songId) {


    $.ajax({
      type: "DELETE",
      url:  "/artists/" + artistId + "#",
      contentType: "application/json",
      dataType: "json"
    })
    .done(function(data) {
      $(".song").parent().remove();
    });
  }




$(document).ready(function() {
$("form").bind("submit", submitSong);
$("#remove-songs").bind("click", removeAllSongs);
});
