trigger testclasstrigger on Account (before insert) {
    for(account a: trigger.new)
    {
        if(a.industry == 'banking')
        {
            a.Phone = '999';
        }
    
    }

}