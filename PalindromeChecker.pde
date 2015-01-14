public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noCapitals(word);
  word = noSpaces(word);
  word = numLetters(word);
  int frontIndex = 0;
  int backIndex = word.length()-1;
  for (int i = 0; i < word.length(); i++)
  {
    if(word.charAt(frontIndex)!=word.charAt(backIndex))
    {
      return false;
    }
    frontIndex++;
    backIndex--;    
  }
  return true;
}

public String noSpaces(String word)
{
  String s = "";
  for(int i = 0; i<word.length(); i++)
  {
    if(word.charAt(i) != ' ')
    {
    s = s + word.charAt(i);  
    }
  }
  return s;
}

public String numLetters(String word){
  String d = new String();
  for(int i = 0; i<word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
    {
     d = d + word.charAt(i);
    }
  }
  return d;
}

public String noCapitals(String word){
  return word.toLowerCase();
}
