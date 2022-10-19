public with sharing class TaskService  {

    public static void createTasks(Set<Id> ids, Schema.SObjectType objectType ) {

        I_TaskService ts = (I_TaskService)Application.service.newInstance(I_TaskService.class);
        ts.createTasks(ids, objectType);
    }

}


// THis class exists for 2 reasons
// ===============================
// 1. We use it in Mocks for Unit tests.
// Example:
// Test.startTest();
// TaskService.createTasks(caseIds, Case.SObjectType);
// Test.stopTest();

// 2. The calling class or method does not need to set up preconditions in order to call the service Implementation  laye
// I mean in LWC controller  do not work with fflib_Application class to instantiate required class
// Do it in Service class
