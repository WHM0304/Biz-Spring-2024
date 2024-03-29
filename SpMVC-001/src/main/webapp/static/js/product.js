document.addEventListener("DOMContentLoaded", () => {
  const btn_insert = document.querySelector("input.btn_insert");
  const t_body = document.querySelector("tbody.table_body");
  const btn_update = document.querySelector("input.HM-update");
  const btn_delete = document.querySelector("input.HM-delete");
  btn_insert?.addEventListener("click", (e) => {
    document.location.href = `${rootPath}/product/insert`;
  });

  t_body?.addEventListener("click", (e) => {
    const target = e.target;
    if (target.tagName === "TD") {
      const TR = target.closest("TR");
      const p_code = TR.dataset.p_code;
      document.location.href = `${rootPath}/product/detail?pcode=${p_code}`;
    }
  });
  btn_delete.addEventListener("click", (e) => {
    const p_code = e.target.dataset.pcode;
    if (confirm("삭제")) {
      document.location.href = `${rootPath}/product/delete?p_code=${p_code}`;
      // alert(p_code);
    }
  });
  btn_update?.addEventListener("click", (e) => {
    const p_code = e.target.dataset.pcode;
    document.location.href = `${rootPath}/product/update?p_code=${p_code}`;
  });
});
