<?php include("includes/includedFiles.php");

if(isset($_GET['id'])) {
  $playlistId = $_GET['id'];
}
else {
  header("Location: index.php");
}

$playlist = new Playlist($con, $playlistId);
$owner = new User($con, $playlist->getOwner());
?>

<div class="entityInfo">
  <div class="leftSection">
  <div class="playlistImage"><img src="assets/images/icons/playlist2.png"></div>
  

  </div>

  <div class="rightSection">
    <h2><?php echo $playlist->getName();?></h2>
    <p>By <?php echo $playlist->getOwner();?></p>
    <!-- If only one song, will display "song" instead of "songs" -->
    <?php
    $numberOfSongs = $playlist->getNumberOfSongs();
    if ($numberOfSongs === 1) {
        echo "<p>1 song</p>";
    } else {
        echo "<p>$numberOfSongs songs</p>";
    }
    ?>
    <button class="button" onclick="deletePlaylist('<?php echo $playlistId; ?>')">DELETE PLAYLIST</button>

  </div>
</div>

<div class="trackListContainer">
  <ul class="tracklist">

    <?php
    
    $songIdArray = $playlist->getSongIds();

    $i = 1;
    foreach($songIdArray as $songId) {
      
      $playlistSong = new Song($con, $songId);

      $songArtist = $playlistSong->getArtist();

      echo "<li class='tracklistRow'>
              <div class='trackCount'>
                <img class='play' src='assets/images/icons/play-cheese-white.png' onclick='setTrack(\"" . $playlistSong->getId() . "\", temporaryPlaylist, true)'>
                <span class='trackNumber'>$i</span>
              </div>

              <div class='trackInfo'>
                <span class='trackName'>" . $playlistSong->getTitle() . "</span>

                <span class='artistName'>" . $songArtist->getName() . "</span>
              </div>

              <div class='trackOptions'>
                <img class='optionsButton' src='assets/images/icons/more.png'>
              </div>

              <div class='trackDuration'>
                <span class='duration'>" . $playlistSong->getDuration() . "</span>
              </div>
            </li>";
      $i++;




    }
    ?>
    <script>
      var tempSongIds = '<?php echo json_encode($songIdArray); ?>';
      temporaryPlaylist = JSON.parse(tempSongIds);
      
    </script>
  </ul>
</div>
