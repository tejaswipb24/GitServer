@isTest
public with sharing class AccountControllerTest {
    @isTest
    public static void getAllActiveAccountsTest(){
        List<account> accounts = new list<account>();
        List<account> accounts1 = new list<account>();
        for(integer i=0;i<3;i++){
            account acc = new account();
            acc.Name = 'Demo'+i;
            acc.Phone = '9090909090';
            acc.Type = 'Customer';
            accounts.add(acc);
        }
        insert accounts;
        System.Test.startTest();
        accounts1 = AccountController.getAllActiveAccounts();
        system.debug(accounts1);
        System.Test.stopTest();
    }
}
