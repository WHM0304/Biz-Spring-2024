document.addEventListener("DOMContentLoaded", () => {
  const btn_add = document.querySelector("button.HM-btn_add");
  const form = document.querySelector("form.HM-form");
  const input = form.dataset.input;
  const input_1 = document.querySelector(".HM-input_1");
  const input_2 = document.querySelector(".HM-input_2");

  if (input == 1) {
    // alert("매입");
    input_1.checked = "true";
  }
  if (input == 2) {
    // alert("매출");
    input_2.checked = "true";
  }

  btn_add?.addEventListener("click", (e) => {
    const today = new Date();
    let year = today.getFullYear();
    let month_obj = today.getMonth() + 1;
    let date_obj = today.getDate();
    let month = month_obj.toString();
    let date = date_obj.toString();
    const hours = today.getHours();
    const minutes = today.getMinutes();
    const seconds = today.getSeconds();
    if (month.length < 2) {
      month = "0" + month;
    }
    if (date.length < 2) {
      date = "0" + date;
    }
    const data_date = `${year}` + "-" + `${month}` + "-" + `${date}`;
    const data_time = `${hours}:${minutes}:${seconds}`;
    console.log(data_date);
    console.log(data_time);
    const input_date = form.querySelector(".HM-date");
    const input_time = form.querySelector(".HM-time");
    input_date.value = data_date;
    input_time.value = data_time;
    const io_pname = document.querySelector(".HM-io_pname");
    const io_price = document.querySelector(".HM-io_price");
    const io_quan = document.querySelector(".HM-io_quan");
    if (!io_pname.value) {
      alert("상품이름을 입력해주세요");
      io_pname.focus();
      return false;
    }
    if (input_1.checked === false && input_2.checked === false) {
      alert("분류를입력해주세요");
      return false;
    }
    if (!io_price.value) {
      alert("상품단가를 입력해주세요");
      io_price.focus();

      return false;
    }
    if (!io_quan.value) {
      alert("상품갯수를 입력해주세요");
      io_quan.focus();
      return false;
    }
    if (isNaN(io_quan.value)) {
      alert("숫자형으로 입력해주세요");
      io_quan.select();
      return false;
    }
    if (isNaN(io_price.value)) {
      alert("숫자형으로 입력해주세요");
      io_price.select();
      return false;
    }

    form.submit();
    // alert(input_1.checked);
    // alert(input_2.checked);
  });
});
