function click() {
  const statusDescOpen = document.getElementById("statusDescOpen");
  const statusDescClose = document.querySelector(".statusDescClose");
  const modal = document.getElementById("statusDescModal");

  statusDescOpen.addEventListener("click", () => {
    modal.style.display = "block";
    document.body.style.overflow = "hidden"; // スクロール固定を追加
  });

  statusDescClose.addEventListener("click", () => {
    modal.style.display = "none";
    document.body.style.overflow = ""; // スクロール固定を解除
  });

  document.addEventListener("click", (e) => {
    if (e.target == statusDescModal) {
      modal.style.display = "none";
      document.body.style.overflow = ""; // スクロール固定を解除
    }
  });
}

window.addEventListener("turbo:load", click);
