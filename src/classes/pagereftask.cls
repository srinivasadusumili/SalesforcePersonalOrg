public class pagereftask {
  public String acname{get;set;}
    public String cname{get;set;}
    public Pagereference page()
    {
        return page.page2;
    }
    public Pagereference page1()
    {
        return page.page3;
    }
    public void save()
    {
        
       
        Account ac  = new Account();
        ac.name=acname;
        insert ac;
        Contact c = new Contact();
        c.lastname = cname;
        c.AccountId = ac.id;
        insert c;
    }
    public Pagereference previous()
    {
        return page.page1;
    }
    public Pagereference previous1()
    {
        return page.page2;
    }
}