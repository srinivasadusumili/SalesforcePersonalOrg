public class Deepdeepcloning {
    public static void clone4()
    {
List<Account> accts = [SELECT CreatedById, CreatedDate, LastModifiedById, LastModifiedDate, BillingCity FROM Account WHERE Name='Acme' OR Name='Salesforce'];
// Clone list while preserving timestamp and user ID fields.
Account[] q3 = accts.deepClone(false,true,false);
// Verify timestamp fields are preserved for the first list element.
System.assertEquals(
    accts[0].CreatedById,
    q3[0].CreatedById);
System.assertEquals(
    accts[0].CreatedDate,
    q3[0].CreatedDate);
System.assertEquals(
    accts[0].LastModifiedById,
    q3[0].LastModifiedById);
System.assertEquals(
    accts[0].LastModifiedDate,
    q3[0].LastModifiedDate);
    }
}