public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for(int i = 0; i < lines.length; i++) 
  {
    if(palindrome(lines[i]) == true)
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
  String orig = "";
  String flip = "";
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)))
      orig += word.substring(i, i + 1);
  }
  for(int i = word.length() - 1; i > -1; i--)
  {
    if(Character.isLetter(word.charAt(i)))
      flip += word.substring(i, i + 1);
  }
  if(orig.toLowerCase().equals(flip.toLowerCase()))
    return true;
  return false;
}

