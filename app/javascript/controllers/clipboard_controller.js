import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = { content: String };

  connect() {
    this.originalContent = this.element.innerHTML; // 元のHTMLを保持
  }

  copy() {
    navigator.clipboard
      .writeText(this.contentValue)
      .then(() => {
        // コピー成功時の処理
        this.element.textContent = "🎉";
        setTimeout(() => {
          this.element.innerHTML = this.originalContent; // 2秒後に元のHTMLに戻す
        }, 1000);
      })
      .catch(() => {
        // コピー失敗時の処理
        alert("🥲コピーできませんでした。");
      });
  }
}
