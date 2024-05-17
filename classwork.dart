void main() {
    // return the frequency of items in any given list using map
    // ["banana", "orange", "lemon", "banana", "orange"]
    // remove ones that dont repeat
    // remove the ones that repeat
    Map<String, int> frequencyList(List<String> words){
        Map<String, int> frequency = {};

        for(String word in words){
          frequency[word] = frequency.containsKey(word) ? frequency[word]! + 1 : 1;
        };
        return frequency;
    }

  Map<String, int> repeatedWords(List<String> words) {
    Map<String, int> frequency = {};
    Map<String, int> repeatingFrequency = {};


    for (String word in words) {
      frequency[word] = frequency.containsKey(word) ? frequency[word]! + 1 : 1;
    }


    frequency.forEach((key, value) {
      if (value > 1) {
        repeatingFrequency[key] = value;
      }
    });

    return repeatingFrequency;
}

Map<String, int> nonRepeated(List<String> words) {
  Map<String, int> frequency = {};
  Map<String, int> nonRepeatingFrequency = {};

  
  for (String word in words) {
    frequency[word] = frequency.containsKey(word) ? frequency[word]! + 1 : 1;
  }

  
  frequency.forEach((key, value) {
    if (value == 1) {
      nonRepeatingFrequency[key] = value;
    }
  });

  return nonRepeatingFrequency;
}


    
print(frequencyList(["banana", "orange", 'mango', 'banana']));
}



