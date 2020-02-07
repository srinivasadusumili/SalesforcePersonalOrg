public class Incometax {
    public  Decimal tax;
 public  Decimal calculateTax(Decimal amount)
 {
     if(amount >= 500000)
     {
         tax = amount*0.20;
     }
     else
     {
         tax = amount*0.10;
     }
     return tax;
 }
}