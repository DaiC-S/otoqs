function copy() {
  const copyMypageUrl = document.getElementById("copy-mypage-url");
  copyMypageUrl.addEventListener("click", () => {
    const urlCopied = copyMypageUrl.getAttribute("data-url");
    navigator.clipboard
      .writeText(urlCopied)
      .then(() => {
        alert("URLがクリップボードにコピーされました。");
      })
      .catch((err) => {
        console.error("クリップボードにコピーできませんでした: ", err);
      });
  });
}

window.addEventListener("turbo:load", copy);
