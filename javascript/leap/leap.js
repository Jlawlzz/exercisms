var Year = function() {};

Year.prototype.isLeap = function(year) {

  var result = [isDivisable(year, 4), isDivisable(year, 100), isDivisable(year, 400)]

  if (result === [true, false, false] || result === [true, true, true]){
    return true
  } else {
    return false
  }

  function isDivisable(year, timeSpan) {
    if (year % timeSpan == 0) {
      return true
    } else {
      return false
    }
  }
}


module.exports = Year;
