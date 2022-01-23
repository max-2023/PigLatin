public void setup() {
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  for (int i = 0; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}

public String pigLatin(String theWord) {
  if (allConsonants(theWord)) return theWord + "ay";
  if (beginsWithVowels(theWord)) return theWord + "way";
  if (beginsWithQu(theWord)) return theWord.substring(2) + "quay";
  if (beginsWithConsonant(theWord)) {
    return theWord.substring(findFirstVowel(theWord)) + theWord.substring(0, findFirstVowel(theWord)) + "ay";
  }
  return "ERROR";
}

public boolean allConsonants(String sWord) {
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u') return false;    
  }  
  return true;
}

public boolean beginsWithVowels (String sWord) {
  if (sWord.charAt(0) == 'a' || sWord.charAt(0) == 'e' || sWord.charAt(0) == 'i' || sWord.charAt(0) == 'o' || sWord.charAt(0) == 'u') return true;
  return false;
}

public boolean beginsWithQu (String sWord) {
  if (sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u') return true;
  return false;
}

public boolean beginsWithConsonant (String sWord) {
  if (sWord.charAt(0) == 'a' || sWord.charAt(0) == 'e' || sWord.charAt(0) == 'i' || sWord.charAt(0) == 'o' || sWord.charAt(0) == 'u') return false;
  return true;
}

public int findFirstVowel(String word){
  for (int i = 0; i < word.length(); i++) {
    if (word.substring(i, i+1).equals("a") || word.substring(i, i+1).equals("e") || word.substring(i, i+1).equals("i") || word.substring(i, i+1).equals("o") || word.substring(i, i+1).equals("u")) return i;
  }
  return -1;
}
