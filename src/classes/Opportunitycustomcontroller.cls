public class Opportunitycustomcontroller {
List<Opportunity> ops1 = [select Name,Amount,StageName,CloseDate,ExpectedRevenue from Opportunity];
    public List<Opportunity> getops()
    {
        return ops1;
    }
}