function nextSongId() {
  return $(".song").length + 1;
}

function submitSong(event) {
  event.preventDefault();
  var songName = $('#song_name').val();

  createSong(songName);
  $('#song_name').val(null);

}


// THIS WORKS STOP TOUCHING IT
function createSong(songName) {
  var newSong = { name: songName};

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



function deleteSongs(event) {
  event.preventDefault();

  $.ajax({
    type: "DELETE",
    url: "/artists" + artistId + "/songs" + ".json",
    contentType: "application/json",
    datatype: "json"})

    .done(function(data) {
      $('#song_"'+ songId +'"').remove();
    });



$(document).ready(function() {
$("form").bind('submit', submitSong);
$("#remove-songs").bind('click', deleteSongs);
});
