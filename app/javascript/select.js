window.addEventListener("turbo:load", function () {
  const pullDownButton = document.getElementById("lists");
  const pullDownParents = document.getElementById("pullDown");
  pullDownButton.addEventListener("click", function () {
    if (pullDownParents.style.display == "none") {
      pullDownParents.style.display = "block";
      document.body.style.backgroundColor = "rgba(0, 0, 0, .3)";
    } else {
      pullDownParents.style.display = "none";
      document.body.style.backgroundColor = "white";
    }
  });
});
