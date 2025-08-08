public with sharing class DMLExamples {
    public static void insertpositions() {
     Position__c pos=new Position__c(Name='AWS DEV',Department__c='IT',Status__c='Open',Job_Description__c='NA');
     insert pos;
     if(pos.id!=null){
        System.debug('position record is inserted sucessfully:'+pos.id);
     }

    }
}