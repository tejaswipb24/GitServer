public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
        return [SELECT Id,Name,Phone,Type,BillingAddress FROM Account WHERE Type = 'Customer'];
      }
  
}
