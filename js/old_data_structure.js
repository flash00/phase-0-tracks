var horseColors = ["blue", "pink", "glitter", "rainbow"];
var horseNames = ["Journey", "Stormy", "Penelope", "Clifford"];

console.log(horseColors);
console.log(horseNames);

horseColors.push("striped");
horseNames.push("Spot");

console.log(horseColors);
console.log(horseNames);

var horsies = {};

console.log(horsies);

for (var i = 0; i < horseColors.length; i++) {
  horsies[horseNames[i]] = horseColors[i]
};

console.log(horsies);

function Car(color) {
  this.color = color;
  this.tireSpeed = Math.round(Math.random() * (60));
  this.changeTire = function() { console.log("Congratulations, the " + this.color + " car is ready. We changed your tire in  " + this.tireSpeed + " minutes.");
  };
};

var firstCar = new Car("blue");
// console.log(firstCar);
firstCar.changeTire();
var secondCar = new Car("red");
secondCar.changeTire();
var thirdCar = new Car("green");
thirdCar.changeTire();

// Release 3:
// If you wanted to loop through the keys and values of an object, how would you do that? By using a for loop, while loop or .forEach. One drawback is that the properties in a JavaScript object are not sorted, i.e. have no order.

// Are there advantages to using constructor functions to create objects? Takes less code and is clear. Disadvantages? Could be an unneccessary function call and you can't simultaneously add properties like the object literal.
