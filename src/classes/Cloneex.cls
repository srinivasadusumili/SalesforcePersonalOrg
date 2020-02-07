public class Cloneex {
    public static void clone1(){
Account a = new Account(Name='Acme', BillingCity='New York');
Account b = new Account();
Account[] q1 = new Account[]{a,b};
Account[] q2 = q1.deepClone();
q1[0].BillingCity = 'San Francisco';
System.assertEquals( 'San Francisco', q1[0].BillingCity);

//System.assertEquals('San Francisco',q2[0].BillingCity);
        System.debug(q1);
        System.debug(q2);
    }
}