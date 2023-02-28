function mysteryScoping1() {
  var x = "out of block";
  if (true) {
    var x = "in block";
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping1();

function mysteryScoping2() {
  const x = "out of block";
  if (true) {
    const x = "in block";
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping2();

// function mysteryScoping3() {
//   const x = "out of block";
//   if (true) {
//     var x = "in block";
//     console.log(x);
//   }
//   console.log(x);
// }

function mysteryScoping4() {
  let x = "out of block";
  if (true) {
    let x = "in block";
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping4();

// function mysteryScoping5() {
//   let x = "out of block";
//   if (true) {
//     let x = "in block";
//     console.log(x);
//   }
//   let x = "out of block again";
//   console.log(x);
// }

function madLib(verb, adjective, noun) {
  console.log(
    `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`
  );
}

// madLib("make", "best", "guac");

function isSubstring(searchString, subString) {
  if (searchString.includes(subString)) {
    return true;
  } else {
    return false;
  }
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
  let new_arr = [];
  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 === 0) {
      continue;
    } else if (array[i] % 3 === 0 || array[i] % 5 === 0) {
      new_arr.push(array[i]);
    }
  }
  return new_arr;
}

// console.log(fizzBuzz([3, 5, 10, 9, 15, 30]));

function isPrime(num) {
  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));
