global class Soapplaner
{
webservice static soap__c createSoap(String Name)
{
soap__c soap = new soap__c();
soap.Name = Name;
insert soap;
return soap;
}

}