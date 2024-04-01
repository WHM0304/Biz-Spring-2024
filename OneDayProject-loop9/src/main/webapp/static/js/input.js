document.addEventListener("DOMContentLoaded", () => {
  const btn_add = document.querySelector("button.HM-btn_add");
  const form = document.querySelector("form.HM-form");
  const input = form.dataset.input;
  const input_1 = document.querySelector(".HM-input_1");
  const input_2 = document.querySelector(".HM-input_2");
  if (input === "1") {
    input_1.checked = "checked";
  } else if (input === "2") {
    input_2.checked = "checked";
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
    form.submit();
  });
});
