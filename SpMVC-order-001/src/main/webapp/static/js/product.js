document.addEventListener("DOMContentLoaded", () => {
  const btn_insert = document.querySelector("input.btn_insert");
  btn_insert.addEventListener("click", (e) => {
    document.location.href = `${rootPath}/product/insert`;
  });
});
