import java.util.*;
class Retain
{
public void add(Set<Integer>a)
{
Scanner sc = new Scanner(System.in);
System.out.println("enter the elements");
int b=sc.nextInt();
while(b!=-1)
{
a.add(b);	
b=sc.nextInt();
}
}
public static void main(String args[])
{
Retain r=new Retain();
Set<Integer> a=new HashSet<Integer>();
Set<Integer> a1=new HashSet<Integer>();
r.add(a);
r.add(a1);
a.retainAll(a1);
Iterator i = a.iterator();
System.out.println("Retained elements");
while(i.hasNext())
{
System.out.println(i.next());
}
}
}