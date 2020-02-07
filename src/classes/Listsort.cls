public class Listsort {
    public static void sorting1()
    {
	List<Integer> q1 = new Integer[3];
// Assign values to the first two elements.
q1[0] = 10;
q1[1] = 5;
q1.sort();
// First element is null, second is 5.
system.assertEquals(5, q1.get(1));
    System.debug(q1.get(1));
    }
}