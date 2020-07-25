
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23. Find The sum of all the multiples of 3 or 5 below n. */

import java.util.*;
class Main 
{
  public static void main(String args[])
  {
    Scanner in=new Scanner(System.in);
    System.out.println();
    System.out.println("The sum of all the multiples of 3 or 5 below n :");
    System.out.println();
    System.out.print("Enter upto which number = ");
    int n=in.nextInt();
    int sum=0;
    for(int i=0;i<n;i++)
    {
      if(i%3==0 || i%5==0)
      {
        sum=sum+i;
      }
      else
      {
        continue;
      }
    }
    System.out.println("The sum of all the multiples of 3 or 5 below"+n+" = "+sum);
  }
}

// GVP
