public class actionregion {
    Public Account acc{Get;Set;}
    Public String AccountName{Get;Set;}
    Public String AccountIndustry{Get;Set;}
    public actionregion()
    {
        acc=new Account();
    }
    public PageReference Click()
    {
        AccountName=acc.Name;
        AccountIndustry=acc.Industry;
        return null;
        /*this is comment */
        
    }
}