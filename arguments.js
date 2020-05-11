function getSum() {
  sum = 0;
  args = arguments;
  for (let i = 0; i < args.length; i++) {
    sum += args[i];
  };
  console.log(args);
  return sum;
};
// console.log(getSum(1, 2, 3));

function getSum2(...args) {
  sum = 0;
  for (let i = 0; i < args.length; i++) {
    sum += args[i];
  };
  console.log(args);
  return sum;
};
// console.log(getSum2(1, 2, 3));


function curriedSum(numArgs) {
    const numbers = [];

    return function _curriedSum(num) {
        numbers.push(num);

        if (numbers.length === numArgs) {
            let sum = 0;

            for (let i = 0; i < numbers.length; i++) {
                sum += numbers[i];
            };  

            return sum;
        } else {
            return _curriedSum;
        };  
    };
}

let stephCurried = curriedSum(3);
console.log(stephCurried(3)(2)(1));
// -----------------------------------------------------------------------------------

// Function.prototype.myBind = function (context, ...bindArgs) {
//   const that = this;
//   console.log(context);
//   console.log(...bindArgs);
//   return function (...callArgs) {
//     console.log(...callArgs);
//     return that.apply(context, bindArgs.concat(callArgs));
//   };
// };

Function.prototype.myBind = function (context) {
  const that = this;
  bindArgs = Array.from(arguments).slice(1);
  console.log(`the arguments are ` + Object.keys(arguments));
  console.log(context);
  console.log(bindArgs);
  return function () {
    callArgs = Array.from(arguments);
    console.log(`these are the call args ${callArgs}`);
    return that.apply(context, bindArgs.concat(callArgs));
  };
};

class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

class Dolphin {
  constructor(name) {
    this.name = name;
  }
}

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");
const flipper = new Dolphin("Flipper");

// markov.says.myBind(pavlov, "meow")("a tree");
// markov.says.myBind(flipper)("sonar", "on a tree?");
/*-----------------------------------------------------------
  function multiply(a, b) {
    console.log(a * b)
  }

  const multiplyByTwo = multiply.myBind()
  const multiplyByThree = multiply.myBind(this, 3);
  const constantMultiply = multiply.myBind(this, 3, 11);

  multiplyByTwo(4) // => 8
  // multiplyByThree(4) // => 12
  // constantMultiply() // => 33
 ------------------------------------------------------- */