<?php 
include("includes/includedFiles.php");

if(isset($_GET['id'])) {
  $albumId = $_GET['id'];
}
else {
  header("Location: index.php");
}

$album = new Album($con, $albumId);
$artist = $album->getArtist();
$artistId = $artist->getId();
?>

<div class="entityInfo">
  <div class="leftSection">
    <img src="<?php echo $album->getArtworkPath(); ?>" alt="">
  </div>

  <div class="rightSection">
    <h2><?php echo $album->getTitle();?></h2>
    <p role="link" tabindex="0" onclick="openPage('artist.php?id=<?php echo $artistId; ?>')">By <?php echo $artist->getName(); ?></p>
    <?php
    $numberOfSongs = $album->getNumberOfSongs();
    if ($numberOfSongs === 1) {
        echo "<p>1 song</p>";
    } else {
        echo "<p>$numberOfSongs songs</p>";
    }
    ?>

  </div>
</div>

<div class="trackListContainer">
  <ul class="tracklist">

    <?php
    $songIdArray = $album->getSongIds();

    $i = 1;
    foreach($songIdArray as $songId) {
      
      $albumSong = new Song($con, $songId);
      $albumArtist = $albumSong->getArtist();

      echo "<li class='tracklistRow'>
              <div class='trackCount'>
                <img class='play' src='assets/images/icons/play-cheese-white.png' onclick='setTrack(\"" . $albumSong->getId() . "\", temporaryPlaylist, true)'>
                <span class='trackNumber'>$i</span>
              </div>

              <div class='trackInfo'>
                <span class='trackName'>" . $albumSong->getTitle() . "</span>

                <span class='artistName'>" . $albumArtist->getName() . "</span>
              </div>

              <div class='trackOptions'>
                <input type='hidden' class='songId' value='" . $albumSong->getId() . "'>
                <img class='optionsButton' src='assets/images/icons/more.png' onclick='showOptionsMenu(this)'>
              </div>

              <div class='trackDuration'>
                <span class='duration'>" . $albumSong->getDuration() . "</span>
              </div>
            </li>";
      $i = $i + 1;

    }

    ?>
    <script>
      var tempSongIds = '<?php echo json_encode($songIdArray); ?>';
      temporaryPlaylist = JSON.parse(tempSongIds);
      
    </script>
  </ul>
</div>

<nav class="optionsMenu">
  <input type="hidden" class="songId">
  <?php echo Playlist::getPlaylistDropdown($con, $userLoggedIn->getUsername()); ?>
  <div class="item">Share</div>
  

</nav>
