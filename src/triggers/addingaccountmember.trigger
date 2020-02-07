trigger addingaccountmember on Account (after insert) {
User u = [select id ,name from  user where name = 'sri adu'];
list<AccountTeamMember> atmlist = new list<AccountTeamMember>();
for(Account a : trigger.new)
{
    if(a.industry == 'Education'){
    AccountTeamMember atm = new AccountTeamMember();
    atm.AccountId = a.id;
    atm.TeamMemberRole = 'Account Manager';
    atm.UserId = u.id;
    atm.AccountAccessLevel = 'edit';
    atmlist.add(atm);
}
    insert atmlist;
}  
            
}