public class TestSoql {
    public static void TestSoql(){
    list<call__c> calls = new list<call__c>();
        calls = [select id, name, Verified_Customer__c from call__C where name IN ('Verbally Notified Customer of Right to Cancel', 'Verified Customer’s ID')];
    system.debug('Calls ===' + calls);
    }
}