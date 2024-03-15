let arr1 = ["Toyota", "Honda", "Suzuki"];
let arr2 = new Array("Toyota", "Honda", "Suzuki");

console.log(arr1);
console.log(arr2);

console.log(arr1[2]);

console.log(arr1.push("Ferrari"));

console.log(arr1);

for (let index = 0; index < arr1.length; index++) {
  console.log(arr1[index]);
}

arr2.forEach((element) => {
  console.log(element);
});

let angka = [1, 4, 7, 9, 11];
let kelipatan = angka.map((x) => x * 2);

console.log(angka);
console.log(kelipatan);

let multi = [
  ["Toyota", "Honda", "Daihatsu"],
  ["Suzuki", "Yamaha", "Kawasaki"],
];

console.log(multi);
console.log(multi[0][1]);

//object literal
let obj1 = {
  nama: "Farrel",
  umur: 21,
  pekerjaan: "Mahasiswa",
  status: false,
};

console.log(obj1);

//object consturctor
function Person(nama, umur, pekerjaan, status) {
  (this.nama = nama), (this.umur = umur), (this.pekerjaan = pekerjaan), (this.status = status);
}

let obj2 = new Person("Elmaretza", 21, "Mahasiswa", false);
console.log(obj2);

console.log(obj2.nama);
console.log(obj2.umur);
console.log(obj2.pekerjaan);
console.log(obj2.status);

obj1.nama = "agus";

console.log(obj1.nama);

let kunci = Object.entries(obj1);

console.log(kunci);

//basic funtion

function salam(nama) {
  console.log("Hello Nama Saya : " + nama);
}

salam("Farrel");

// Expression Function

let hi = function (nama) {
  console.log("Hello " + nama);
};

hi("Farrel");

//arrow function
let arrowFunction = () =>{
  console.log('Hello World!');
}

arrowFunction()

// DOM 
