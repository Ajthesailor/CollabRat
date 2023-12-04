<?php
$songQuery = mysqli_query ($con, "SELECT id FROM songs ORDER BY RAND() LIMIT 10");

$resultArray = array();

while($row = mysqli_fetch_array($songQuery)) {
  array_push($resultArray, $row['id']);
}

// JSON conversion
$jsonArray = json_encode($resultArray);

?>
<script>



$(document).ready(function() {
  currentPlaylist = <?php echo $jsonArray; ?>;
  audioElement = new Audio();
  setTrack(currentPlaylist[0], currentPlaylist, true);
});

function setTrack(trackId, newPlaylist, play) {
  audioElement.setTrack("assets/music/unholy_ushuu_flip.mp3");

  if(play) {
    this.audio.play();
  }
  
}

function playSong() {
  $(".controlButton.play").hide();
  $(".controlButton.pause").show();
  audioElement.play();
}

function pauseSong() {
  $(".controlButton.pause").hide();
  $(".controlButton.play").show();
  audioElement.pause();
}


</script>

<div id="nowPlayingBarContainer">

  <div id="nowPlayingBar">

    <div id="nowPlayingLeft">
      <div class="cotent">
        <span class="albumLink">
          <img src="https://images.surfacemag.com/app/uploads/2021/09/01040757/drake-certified-lover-boy-damien-hirst-album-artwork.jpg" class="albumArtwork" alt="">
        </span>
        <div class="trackInfo">
          <span class="trackName">
            <span>7AM on Bridle Path</span>
          </span>

          <span class="artistName">
            <span>Drake</span>
          </span>
        </div>
      </div>

    </div>
    <div id="nowPlayingCenter">
      <div class="content playerControls">

        <div class="buttons">
          <!-- Shuffle -->
          <button class="controlButton shuffle" title="Shuffle Button">
            
              <img src="assets/images/icons/shuffle2.png" alt="Shuffle">
            <!-- Previous -->
            <button class="controlButton previous" title="Previous Button">
            
            <img src="assets/images/icons/previous2.png" alt="Previous">
            <!-- Play -->
            <button class="controlButton play" title="Play Button" onclick="playSong()">
            
            <img src="assets/images/icons/play.png" alt="Play">

            <!-- Pause -->
            <button class="controlButton pause" title="Pause Button" style="display: none;" onclick="pauseSong()">
            
            <img src="assets/images/icons/pause.png" alt="Pause">


            <!-- Next -->
            <button class="controlButton next" title="Next Button">
            
            <img src="assets/images/icons/next2.png" alt="Next">
            <!-- Repeat -->
            <button class="controlButton repeat" title="Repeat Button">
            
            <img src="assets/images/icons/repeat2.png" alt="Repeat">

          </button>
        </div>

          <div class="playbackBar">

          <span class="progressTime current">0.00</span>
          <div class="progressBar">

            <div class="progressBarBg">
              <div class="progress"></div>
            </div>

          </div>
          <span class="progressTime remaining">0.00</span>

          </div>

      </div>
    </div>
    <div id="nowPlayingRight">
      <div class="volumeBar">

        <button class="controlButton volume" title="Volume button">
        <img src="assets/images/icons/volume.png" alt="Volume">
        </button>

        <div class="progressBar">

          <div class="progressBarBg">
            <div class="progress"></div>
          </div>

        </div>
      </div>

    </div>

  </div>

</div>