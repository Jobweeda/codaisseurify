function submitSong(event) {
  event.preventDefault();



  createSong($("#song_name").val());
  $("#song_name").val(null);
}

function createSong(title) {
  var checkboxId = "song-" + nextSongId();

  var label = $('<label></label>')
    .attr('for', checkboxId)
    .html(title);

  var checkbox = $('<input type="checkbox" value="1" />')
    .attr('id', checkboxId)
    .bind('change', toggleDone);

  var tableRow = $('<tr class="todo"></td>')
    .append($('<td>').append(checkbox))
    .append($('<td>').append(label));

  $(".all-songs").append(songItem);


function destroySongs(event) {
  event.preventDefault();
  $.when($(".success").remove())


}

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleDone);
  $("form").bind('submit', submitSong);
  $("#remove-songs").bind('click', destroySongs);
});
