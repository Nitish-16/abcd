import java.util.*;
class Hashmap
{
public static void main(String args[])
{
HashMap a=new HashMap();
a.put(101,"Nitish");
a.put(102,"Johnny");
a.put(103,"Mayank");
Set set=a.entrySet();
Iterator i=set.iterator();
System.out.println("key and values are as follows");
while(i.hasNext())
{
Map.Entry e=(Map.Entry)i.next();
System.out.println(e.getKey()+" ");
System.out.println(e.getValue());
 }
}
}