trigger trg13 on Case (before update) {
for(Case c : trigger.new)
{
    if(c.Status == 'Working')
    {
        c.OwnerId = c.LastModifiedById;
    }
}
}