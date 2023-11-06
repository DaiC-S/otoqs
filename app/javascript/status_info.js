function click() {
  const statusDescOpen = document.getElementById("statusDescOpen");
  const statusDescClose = document.querySelector(".statusDescClose");
  const modal = document.getElementById("statusDescModal");
  statusDescOpen.addEventListener("click", () => {
    modal.style.display = "block";
  });
  statusDescClose.addEventListener("click", () => {
    modal.style.display = "none";
  });
  document.addEventListener("click", (e) => {
    if (e.target == statusDescModal) {
      modal.style.display = "none";
    }
  });
}

window.addEventListener("turbo:load", click);
