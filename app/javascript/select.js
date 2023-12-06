window.addEventListener("turbo:load", function () {
  const pullDownButton = document.getElementById("lists");
  const pullDownParents = document.getElementById("pullDown");
  pullDownButton.addEventListener("click", function (e) {
    const isDisplayed = pullDownParents.style.display === "block";
    pullDownParents.style.display = isDisplayed ? "none" : "block";
    document.body.style.backgroundColor = isDisplayed ? "white" : "rgba(0, 0, 0, .3)";
    e.stopPropagation();
  });

  document.body.addEventListener("click", () => {
    if (pullDownParents.style.display === "block") {
      pullDownParents.style.display = "none";
      document.body.style.backgroundColor = "white";
    }
  });
});
