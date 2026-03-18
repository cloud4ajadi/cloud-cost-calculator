function calculateCost(){

document.getElementById("loading").style.display = "block";

setTimeout(() => {

let vm = document.getElementById("vm").value;
let storage = document.getElementById("storage").value;

let total = (vm * 25) + (storage * 0.10);

document.getElementById("loading").style.display = "none";

document.getElementById("result").innerHTML =
"Estimated Monthly Cost: $" + total;

}, 800);

}