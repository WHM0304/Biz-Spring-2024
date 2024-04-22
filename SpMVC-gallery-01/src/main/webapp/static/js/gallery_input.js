document.addEventListener("DOMContentLoaded", () => {
  const fileInput = document.querySelector("input.file");
  const preImg = document.querySelector("img.gallery");
  const imgBorderBox = document.querySelector("div.image");
  const base64Box = document.querySelector("textarea.base64");

  const ecodeImageFileAsBase64 = async (image) => {
    return new Promise((resolve, _) => {
      // FileReader 는 무조건 비동기 방식
      // Promise 는 비동기를 동기방식으로 해주는 클래스
      const reader = new FileReader();

      reader.onloadend = () => {
        resolve(reader.result);
      };
      reader.readAsDataURL(image);
    });
  };

  preImg.addEventListener("click", () => fileInput.click());

  imgBorderBox.addEventListener("paste", async (e) => {
    const items = e.clipboardData.items;
    // items 객체가 존재하면 그중 0번째 요소를 getter 하기
    const item = items?.[0];
    // image/png, text/plan, apllication/text,

    // 붙여넣기 한 데이터가 image/* 이면~~
    if (item.type.indexOf("image") === 0) {
      // 붙여넣기 한 이미지 중에서 파일만 추출하기
      const blob = item.getAsFile();
      // 파일이 추출이 안되면
      if (!blob) {
        return null;
      }
      const base64 = await ecodeImageFileAsBase64(blob);
      preImg.src = base64;
      base64Box.value = base64;

      // 파일을 읽기 위한 도구(클래스)
      //   const reader = new FileReader();

      //   // 파일이 모두 load(읽히기) 되었으면
      //   reader.onloadend = () => {
      //     preImg.src = reader.result;
      //   };
      //   reader.readAsDataURL(blob);

      // 파일을 읽어라 라는 명령
    } else {
      alert("이미지만 붙여 넣기 하세요");
    }
  });

  fileInput.addEventListener("change", async (e) => {
    const target = e.target;
    const file = target.files[0];

    const base64 = await ecodeImageFileAsBase64(file);
    preImg.src = base64;
    base64Box.value = base64;
    // alert(file.name);
    // const reader = new FileReader();

    // reader.onloadend = () => {
    //   preImg.src = reader.result;
    // };
    // reader.readAsDataURL(file);
  });
});
