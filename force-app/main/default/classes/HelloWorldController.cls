public with sharing class HelloWorldController {
    @AuraEnabled(cacheable=true)
    public static String getMessage() {
        return 'Hello from Apex!';
    }
}
