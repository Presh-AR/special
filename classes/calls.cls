public class calls {
    private static Map<Id, Event> getCallWhatIdToEventRecord(List< Call__c > calls){
        Map<Id, Event> eventWhatIdToEventRecord = new Map<Id, Event>();
        
        // Open access required for mapping. This feature relies on Call records
        // and their related Event records being in sync. If user has access to Event record (checked above)
        // then this feature requires access to all fields.
        for (Event e : [SELECT Id, Subject, ActivityDateTime, DurationInMinutes, WhatId FROM Event WHERE WhatId IN : calls]) {
            eventWhatIdToEventRecord.put(e.WhatId, e);
        }
        return eventWhatIdToEventRecord;
    }

}