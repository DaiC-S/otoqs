function actionInfo() {
  document.querySelectorAll("[id^='actionDescOpen_']").forEach(function (openTrigger) {
    openTrigger.addEventListener("click", function () {
      const voucherId = this.id.replace("actionDescOpen_", "");
      const modal = document.getElementById("actionDescModal_" + voucherId);
      modal.style.display = "block";
    });
  });

  document.querySelectorAll(".actionDescClose").forEach(function (closeTrigger) {
    closeTrigger.addEventListener("click", function () {
      const voucherId = this.dataset.closeId;
      const modal = document.getElementById("actionDescModal_" + voucherId);
      modal.style.display = "none";
    });
  });

  document.addEventListener("click", function (e) {
    if (e.target.classList.contains("shared")) {
      const modals = document.querySelectorAll("[id^='actionDescModal_']");
      modals.forEach(function (modal) {
        if (e.target !== modal && !modal.contains(e.target)) {
          modal.style.display = "none";
        }
      });
    }
  });
}

document.addEventListener("turbo:load", actionInfo);
