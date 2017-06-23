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