void main() {
  var numberList = [1, 2, 3, 4, 5];
  var stringList = ['Hello', 'Dicoding', 'Dart'];
  List dynamicList = [1, 'Dicoding', true]; // List<dynamic>

  print(dynamicList[1]);
  print(dynamicList[3]);

  for(int i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }

  stringList.forEach((s) => print(s));
  stringList.add('Flutter');
  stringList.insert(0, 'Programming');
  stringList[1] = 'Application';

  stringList.remove('Programming'); // Menghapus list dengan nilai Programming
  stringList.removeAt(1);           // Menghapus list pada index ke-1
  stringList.removeLast();          // Menghapus data list terakhir
  stringList.removeRange(0, 2);     // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)

  // spread operator
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [...favorites, ...others];
  print(allFavorites);

  // null-aware spread
  var list;
  var list2 = [0, ...?list];
  print(list2);
}