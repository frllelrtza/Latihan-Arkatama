// alert("Hello World"); //statment

console.log("statement 1 baris"); //titik koma ga wajib

// let fullName = "Farrel";
// fullName = "Elmaretza";
// fullName = "Farrel Elmaretza";
// // document.write(fullName);

// console.log(fullName);

// document.writeln(fullName);
// document.writeln(fullName);
// document.writeln(fullName);
// document.writeln(fullName);
// document.writeln(fullName);
// document.writeln(fullName);

let x = 10;
if (true) {
  let x = 20;
  console.log("Nilai x di dalam blok:", x);
}

console.log("Nilai x diluar box", x);

let bulat = 25;
let desimal = 25.2;

document.writeln(bulat);
document.writeln("<br>");
document.writeln(desimal);
document.writeln("<br>");
document.writeln(bulat + desimal);

console.log(bulat / 0);

let kosong = null;
let nol = 0;
// kosong != null

let employee = {
  name: "john",
  age: 30,
  job: "web developer",
  isMarried: false,
};

document.writeln(`My Name is  ${employee.name} and he is ${employee.age} years old.`);

let a = 3;
let b = 5;

if (a > 0 && b > 0) {
  console.log("a dan b bilangan positif");
} else {
  console.log("a dan b bilangan negatif");
}

console.log(a > 0 ? "a bilangan positif" : "b bilangan negatif");

// let string = prompt("Masukan Kalimat");
// console.log(string);

// let string = confirm("Apakah Anda yakin?");
// console.log(string);

for (let i = 1; i <= 5; i++) {
  document.writeln(i);
  console.log("Ini perulangan ke -", i);
}

//mentoring

const benua = ["Asia", "Eropa", "Afrika", "Australia"];

var alamat = "Malang";

let noHP = "085xxxxxxxx";
let nama = "Arkatama";

function cetakNama() {
  console.log(benua);
  console.log(alamat);
  console.log(nama);
}

function cetakAlamat() {
  console.log(benua);
  console.log(alamat);
  // console.log(nama);
}

cetakNama();
cetakAlamat();

function myFunction() {
  let message = "Hello World!";

  if (true) {
    let message = "Goodbye World!";
  }

  console.log(message);
}
myFunction();

let umur = 20;

if (umur >= 17) {
  console.log("Bisa Buat KTP");
} else {
  console.log("Belum Bis Buat KTP");
}

umur >= 10 ? console.log("Ternary - Bisa Buat KTP") : console.log("Ternary - Belum Bisa Buat KTP");
