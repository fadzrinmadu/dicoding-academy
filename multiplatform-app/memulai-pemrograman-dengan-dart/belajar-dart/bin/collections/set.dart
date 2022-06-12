void main() {
  var numberSet = {1, 4, 6};
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);
  print(anotherSet);

  numberSet.add(6);
  numberSet.addAll({2, 2, 3});
  numberSet.remove(3);

  print(numberSet.elementAt(2));

  // union (gabungan) and intersection (irisan)
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print(union);
  print(intersection);
}