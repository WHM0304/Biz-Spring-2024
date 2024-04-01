document.addEventListener("DOMContentLoaded", () => {
  const tbody = document.querySelector(".HM-list_body");
  tbody?.addEventListener("click", (e) => {
    const target = e.target;
    if (target.tagName === "TD") {
      const TR = target.closest("TR");
      const io_seq = TR.dataset.io_seq;
      document.location.href = `${rootPath}/iolist/detail?io_seq=${io_seq}`;
    }
  });
  const btn_update = document.querySelector(".HM-update");
  const btn_delete = document.querySelector(".HM-delete");

  btn_delete?.addEventListener("click", (e) => {
    const target = e.target;
    const io_seq = target.dataset.io_seq;
    if (confirm("삭제하시겠습니까?")) {
      document.location.href = `${rootPath}/iolist/delete?ioSeq=${io_seq}`;
    }
  });
  btn_update?.addEventListener("click", (e) => {
    const io_seq = e.target.dataset.io_seq;
    // if(){

    // }
    document.location.href = `${rootPath}/iolist/update?io_seq=${io_seq}`;
  });
});
