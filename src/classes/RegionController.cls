public class RegionController {
    Public Account acc{Get;Set;}
    Public String AccountName{Get;Set;}
    Public String AccountIndustry{Get;Set;}
    public RegionController()
    {
        acc=new Account();
    }
    public PageReference Click()
    {
        AccountName=acc.Name;
        AccountIndustry=acc.Industry;
        return null;
        
    }
}