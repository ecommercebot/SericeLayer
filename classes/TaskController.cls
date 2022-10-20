public with sharing class TaskController {
    @AuraEnabled
    public static List<Task> createTask(Id id) {

    Set<Id> ids = new Set<Id>{id};
    Schema.SObjectType objectType = id.getSobjectType();

        try{
            TaskService.createTasks(ids, objectType);
            // TBD - grab new Tasks and show in html template
            List<Task> t = new List<Task>();
            return t;
        }
        catch(Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
            
  } // method
} // class




