let endpoint = "https://api.jikan.moe/v4/top/anime";

let konten = document.getElementById("konten");

fetch(endpoint)
  .then((response) => response.json())
  .then((response) => {
    let datas = response.data;

    datas.forEach((element) => {
      konten.innerHTML =
        `
        

        <div class="col p-2">
        <div class="card shadow-sm">
        <img src="${element.images.webp.image_url}" style="width: 100%; height: 500px; object-fit: cover;"></img>
            <h3 class="card-title p-2 m-2">${element.title}</h3>

          <div class="card-body ">
            <p class="card-text">${element.synopsis.substring(0, 100)}</p>
            <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
        </div>
      </div>
        ` + konten.innerHTML;

      console.log(element);
    });
  });
