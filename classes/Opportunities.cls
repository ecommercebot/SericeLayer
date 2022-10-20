public with sharing class Opportunities extends fflib_SObjectDomain  implements I_CreateTask {

    public Opportunities(List<Opportunity> opptRecords) {
		super(opptRecords); // Provides records to fflib_SObjectDomain class constructor
	}

// This inner class is for safety reasons to ensure the right type passed  to the Opportunity class constructor
	public class Constructor implements fflib_SObjectDomain.IConstructable { 
		public fflib_SObjectDomain construct(List<SObject> sObjectList) {
			return new Opportunities(sObjectList); 
		}
	}


	public fflib_ISObjectUnitOfWork createTasksForOpportunities(List<SObject> addTasksTo, fflib_ISObjectUnitOfWork unitOfWork) {
		List<Opportunity> oppts = (List<Opportunity>)addTasksTo;
		List<Task> taskList = new List<Task>();
		for(Opportunity o: oppts) {
			Task t = new Task();
			t.WhatID = o.Id;
			t.Ownerid  = o.Ownerid;
			t.Subject = 'Created using Service Layer!!!';
			t.Status = 'New';
			t.Type = 'Call';
			t.Description = 'This is the Description';
			taskList.add(t);
		}
		unitOfWork.registerNew(taskList);
		return unitOfWork;
	}
}
