public with sharing class CreateLeaseDocsVFController {

        public static void CreateLeaseDocsVFController(){
           list<call__c> calls = new list<call__c>();
        // Code related to show popup functionality
        calls =[SELECT id, name FROM call__c WHERE Name IN ('Verbally Notified Customer of Right to Cancel', 'Verified Customer’’s ID')];
        system.debug('calls===' + calls);
        }
      }