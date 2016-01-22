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
  String a = new String();
  String b = new String(); 
  
  for (int i=word.length(); i > 0; i--) 
  {
    if (Character.isLetter(word.charAt(i-1))){
       
      a = a + word.substring(i-1,i) ;
      
    }
  }
  for(int i = 0; i < word.length(); i++){
    if (Character.isLetter(word.charAt(i))){
         
           
    b = b + word.substring(i,i+1) ;
      
    }
  }
  if (a.toLowerCase().equals(b.toLowerCase())){
  return true;
  }
  return false;
}
