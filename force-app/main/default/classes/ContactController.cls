public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        throw new AuraHandledException('Forced error');
        /*try {
            return [
                SELECT FirstName, LastName, Email
                FROM Contact
                WITH SECURITY_ENFORCED
                ORDER BY Name
            ];
        } catch(Exception) {
            
        }*/
    }
}