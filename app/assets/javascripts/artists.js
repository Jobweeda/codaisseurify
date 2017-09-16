function submitSong(event) {
  event.preventDefault();
  createSong($("#song_name").val());
  $("#song_name").val(null);
}

function destroySongs(event) {
  event.preventDefault();
  $.when($(".success").remove())
  .then($())

}

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleDone);
  $("form").bind('submit', submitSong);
  $("#clean-up").bind('click', destroySongs);
});
