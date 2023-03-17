// Assignment No.6
// Answer 1
void main() {
  print(isPalin('wow')); // true
  print(isPalin('oval')); // false
}


bool isPalin(String str) {
  String reversed = str.split('').reversed.join();
  return str == reversed;
}
// Answer 1

// Answer 2
void main () {
String myString = 'hello';
String sortedString = alphabetize(myString);
print(sortedString); // Output: ehllo
}

String alphabetize(String str) {
  List<String> chars = str.split(''); // Split string into list of characters
  chars.sort(); // Sort the characters alphabetically
  return chars.join(''); // Join the characters back into a string and return
}
// Answer 2

// Answer 3
void main () {
String input = "the quick brown fox";
String output = capitalizeFirstLetter(input);
print(output); // prints "The Quick Brown Fox"
  }
  
String capitalizeFirstLetter(String input) {
  if (input == null) {
    return null;
  }
  
  List<String> words = input.split(" ");
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      words[i] = word[0].toUpperCase() + word.substring(1);
    }
  }
  
  return words.join(" ");
}
// Answer 3

// Answer 4
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> result = findSecondLowestAndGreatest(numbers);
  print("Second Lowest Number: ${result[0]}");
  print("Second Greatest Number: ${result[1]}");
}

List<int> findSecondLowestAndGreatest(List<int> numbers) {
  numbers.sort();
  int secondLowest = numbers[1];
  int secondGreatest = numbers[numbers.length - 2];
  return [secondLowest, secondGreatest];
}
// Answer 4

// Answer 5
void main() {
  String str = 'w3resource.com';
  String letter = 'o';
  int count = countOccurrences(str, letter);
  print("Number of Occurrences: $count");
}


int countOccurrences(String str, String letter) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == letter) {
      count++;
    }
  }
  return count;
}
// Answer 5

// Answer 6
void main() {
  List<String> countryNames = ["Australia", "Germany", "United States of America"];
  String longestCountry = getLongestCountry(countryNames);
  print("Longest Country Name: $longestCountry");
}

String getLongestCountry(List<String> countryNames) {
  String longestCountry = "";
  for (String country in countryNames) {
    if (country.length > longestCountry.length) {
      longestCountry = country;
    }
  }
  return longestCountry;
}
// Answer 6