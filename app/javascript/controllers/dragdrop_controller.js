import { Controller } from "@hotwired/stimulus";
import Sortable from "sortablejs";

export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      animation: 150,
      onEnd: this.updateOrder.bind(this),
    });
  }
  updateOrder(event) {
    const item = event.item;
    const newIndex = event.newIndex;
    const id = item.dataset.id; // リストアイテムにデータ属性でIDを設定する必要があります。
    // バックエンドに新しい順序を送信
    fetch("/vouchers/update_order", {
      method: "PUT",
      headers: {
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").getAttribute("content"),
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ voucher_order: this.sortedIds() }),
    });
  }

  sortedIds() {
    return Array.from(this.element.children).map((el) => el.dataset.id);
  }
}
