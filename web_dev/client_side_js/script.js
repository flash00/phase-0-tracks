console.log("The script is running!");

function addPinkBorder(event) {
  event.target.style.border = "2px solid pink";
}

var buttons = document.getElementsByTagName("button");
var button = buttons[1];
console.log(button);
button.addEventListener("click", addPinkBorder);