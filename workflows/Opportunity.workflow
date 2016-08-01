<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>update_closedate</fullName>
        <field>CloseDate</field>
        <formula>today()+1</formula>
        <name>update closedate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Change Stage Date</fullName>
        <actions>
            <name>update_closedate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(  MONTH(CloseDate) = 12, DAY(CloseDate) = 31)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
