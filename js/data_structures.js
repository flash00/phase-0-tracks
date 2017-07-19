var names = ["Ed", "Journey", "Percy", "Marty"];
var colors = ["blue", "pink", "sparkle", "purple"];

names.push("Billy");
colors.push("Banana");

// console.log(names);
// console.log(colors);


function toObject(namesArray, valuesArray){
  var horses = {};
  for(var i = 0; i < names.length; i += 1)
    horses[names[i]] = colors[i];
  return horses;
}

// console.log(toObject(names, colors));

// *************************

var car = {};

function Car(model, color, year) {

console.log("Our new car:", this);

this.model = model;
this.color = color;
this.year = year;

this.speed = function(speed) { console.log(speed + " miles per hour");};


console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car...");
var anotherCar = new Car("Camero", "golden", 1972);
console.log(anotherCar);
console.log("Our car can go fast: ");
anotherCar.speed(200);
console.log("---------");

console.log("Let's build another car...");
var secondCar = new Car("Pinto", "lime green", 1976);
console.log(secondCar);
console.log("Our car can go fast: ");
anotherCar.speed(45);
console.log("---------");

console.log("Let's build another car...");
var thirdCar = new Car("Shelby Cobra", "blue with white racing stripes", 1969);
console.log(thirdCar);
console.log("Our car can go fast: ");
anotherCar.speed(180);
console.log("---------");