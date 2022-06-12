void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan'
  };

  print(capital['Jakarta']);

  var mapKeys = capital.keys;
  // mapKeys = (Jakarta, London, Tokyo)

  var mapValues = capital.values;
  // mapValues = (Indonesia, England, Japan)

  capital['New Delhi'] = 'India';
  print(capital);
  // Output: {Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}
}