// The abstract class Language will have subclasses for English, Indian and French.
// These subclasses demonstrate different greetings.


abstract class Language { //Abstract class Language
  // Abstract method/function to be implemented by subclasses
  void greet();
}

// Subclass English implementing greet() method
class English extends Language {
  // Implement the abstract greet method
  void greet() {
    print('Hello!, is a word from the English language.');
  }
}

// Subclass Indian implementing greet() method
class Indian extends Language {
  // Implement the abstract greet method
  void greet() {
    print('Namaste!, is a word from the Indian language.');
  }
}

// Subclass French implementing greet() method
class French extends Language {
  // Implement the abstract greet method
  void greet() {
    print('Bonjour!, is a word from the French language.');
  }
}

// The Main function
void main() {
  // Create instances of the subclasses
  Language english = English();
  Language indian = Indian();
  Language french = French();

  // Call the greet method for each language
  english.greet(); // output for English
  indian.greet(); // output for Indian
  french.greet();  // output for French
}