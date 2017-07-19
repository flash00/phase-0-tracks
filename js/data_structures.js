var names = ["Ed", "Journey", "Percy", "Marty"];
var colors = ["blue", "pink", "sparkle", "purple"];

names.push("Billy");
colors.push("Banana");

console.log(names);
console.log(colors);


function toObject(namesArray, valuesArray){
  var horses = {};
  for(var i = 0; i < names.length; i += 1)
    horses[names[i]] = colors[i];
  return horses;
}

console.log(toObject(names, colors));

// creates same object with much less code

var horses = {};

for(var i = 0; i < names.length; i += 1)
    horses[names[i]] = colors[i];

console.log(horses);
// *************************

var car = {};

function Car(model, color, year) {

console.log("Our new car:", this);

this.model = model;
this.color = color;
this.year = year;

this.speed = function(speedNum) { console.log(speedNum + " miles per hour!")};

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

// If you wanted to loop through the keys and values of an object, how would you do that? By using a for in loop, for loop, while loop or .forEach. One drawback is that the properties in a JavaScript object are not sorted, i.e. have no order.

// Are there advantages to using constructor functions to create objects? Takes less code and is clear. Disadvantages? Could be an unneccessary function call and you can't simultaneously add properties like the object literal.
