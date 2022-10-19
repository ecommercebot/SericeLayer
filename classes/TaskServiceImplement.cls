public with sharing class TaskServiceImplement implements I_TaskService  {

public static void createTasks(Set<Id> ids, Schema.SObjectType objectType) {

	fflib_ISObjectUnitOfWork unitOfWork = Application.UOW.newInstance();  

	fflib_ISObjectSelector objectSelector = Application.selector.newInstance(objectType);
	List<SObject> addTasksTo = new List<SObject>();
	addTasksTo = objectSelector.selectSObjectsById(ids);

	fflib_IDomain objectDomain = Application.domain.newInstance(ids);
	I_CreateTask createTask = (I_CreateTask)objectDomain;
	createTask.createTasksForOpportunities(addTasksTo, unitOfWork);


		try{
			unitOfWork.commitWork();
		}
		catch(Exception e){
			throw e;
		}
   
   }
}
