public with sharing class CreateLeaseDocsVFController {

        public static void CreateLeaseDocsVFController(){
           //list<call__c> calls = new list<call__c>();
           list<account> acc = new list<account>();
        // Code related to show popup functionality
        acc =[SELECT id, name FROM account WHERE Name IN ('Verbally Notified Customer of Right to Cancel', 'Verified Customer’’s ID')];
        system.debug('calls==' + acc);
        }
      }