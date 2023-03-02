function titleize(arr, callback) {
  const titledNames = arr.map((el) => {
    return "Mx. " + el + " Jingleheimer Schmidt";
  });

  titledNames.forEach((name) => callback(name));
}

// titleize(["Mary", "Brian", "Leo"], console.log);

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  console.log(
    `${this.name} is ${
      this.tricks[Math.floor(Math.random() * this.tricks.length)]
    }`
  );
};

dumbo = new Elephant("Dumbo", 120, [
  "painting a picture",
  "playing basketball",
  "yoyoing",
  "playing video games",
]);

let ellie = new Elephant("Ellie", 185, [
  "giving human friends a ride",
  "playing hide and seek",
]);
let charlie = new Elephant("Charlie", 200, [
  "painting pictures",
  "spraying water for a slip and slide",
]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, [
  "trotting",
  "playing tic tac toe",
  "doing elephant ballet",
]);

let herd = [dumbo, ellie, charlie, kate, micah];

Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is trotting by`);
};

// Elephant.paradeHelper(dumbo);

herd.forEach((ele) => Elephant.paradeHelper(ele));
