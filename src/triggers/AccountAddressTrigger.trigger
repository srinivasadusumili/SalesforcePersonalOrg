trigger AccountAddressTrigger on Account (before insert,before update) {
  for(Account a : Trigger.new)
  {
      if(a.BillingPostalCode != Null && a.Match_Billing_Address__c == true)
      {
          a.shippingPostalCode = a.billingpostalcode;
      }
          
      
  }
}