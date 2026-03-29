function toggleManu() {
    document.getElementById('set-manu').classList.toggle('active');
}// APPLY SAVED MODE ON LOAD
const savedMode = localStorage.getItem("mode");

if (savedMode === "light") {
  document.body.classList.add("light-mode");
}

// TOGGLE MODE
function toggleMode() {
  document.body.classList.toggle("light-mode");

  localStorage.setItem(
    "mode",
    document.body.classList.contains("light-mode") ? "light" : "dark"
  );
}



// MUSIC PLAYER
const player = document.getElementById("player");
let currentSong = "";
let currentBtn = null;

function playMusic(src, btn) {
  if (currentSong === src) {
    if (player.paused) {
      player.play();
      btn.innerText = "⏸";
    } else {
      player.pause();
      btn.innerText = "▶";
    }
  } else {
    if (currentBtn) currentBtn.innerText = "▶";

    currentSong = src;
    currentBtn = btn;

    player.src = src;
    player.play();
    btn.innerText = "⏸";
  }
}