function getCount(arr) {
  return arr.length;
}
function narc(integer) {
  var arr = integer.toString().split("");
  var power = getCount(arr);
  var array = arr.map(function(num) {
    return Math.pow(parseInt(num), power);
  });
  if (array.reduce(getSum) === integer) {
    return true;
  } else {
    return false;
  }
}

function getSum(total, num) {
    return total + num;
}
console.log(narc(153));
console.log(narc(1634));
