numDifferentiation(value) {
  var val = value;
  if (val >= 10000000) {
    val = (val / 10000000).toStringAsFixed(2) + ' Cr';
  } else if (val >= 100000) {
    val = (val / 100000).toStringAsFixed(2) + ' Lac';
  }
  return val;
}
